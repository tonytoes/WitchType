shaders = {}

-- NOTE: These shaders are written using GLSL for Love2D
-- the following shader ONLY handles the 'cutting through' darkness part
-- the color effects of light sources is handled in mix
shaders.multiTrueLight = love.graphics.newShader[[
    // vec4 light sources: x, y, z is the radius, a is the color ID (color id is not used here, only in mix)
    extern vec4 lightSources[125];
    extern number n_lights;
    extern number darkVal;
    extern number darkType;
    extern number globalScale;
    vec4 effect( vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords ) {
        number alpha = darkVal;
        for (int i = 0; i < n_lights; ++i) {
            vec4 src = lightSources[i];
            if (src.z > 0) {
                number distance = pow(pow(screen_coords.x - src.x, 2) + pow(screen_coords.y - src.y, 2), 0.5);
                number newAlpha = alpha - (1 - ( distance / src.z ));

                if (src.z/globalScale < 30) { // small light source
                    if (distance < src.z) {
                        newAlpha = 0.4 * darkVal;
                    } else if (distance < src.z*1.15) {
                        newAlpha = 0.7 * darkVal;
                    }
                } else {
                    if (distance < src.z) {
                        newAlpha = 0.4 * darkVal;
                    } else if (distance < src.z*1.05) {
                        newAlpha = 0.6 * darkVal;
                    } else if (distance < src.z*1.1) {
                        newAlpha = 0.8 * darkVal;
                    }
                }
                
                if (newAlpha < alpha) {
                    alpha = newAlpha;
                }
            }
        }

        if (darkType == 0) {
            return vec4(0, 0, 0, alpha);
        } else if (darkType == 1) {
            vec4 pixel = Texel(texture, texture_coords);
            return vec4(pixel.r, pixel.g, pixel.b, alpha);
        } else if (darkType == 2) {
            return vec4(33.0/255.0, 5.0/255.0, 62.0/255.0, alpha);
        } else if (darkType == 3) {
            return vec4(17.0/255.0, 10.0/255.0, 26.0/255.0, alpha);
        } else if (darkType == 4) {
            return vec4(7.0/255.0, 16.0/255.0, 12.0/255.0, alpha);
        }
        
    }
]]

-- Main mix, handles saturation and color mixing
shaders.mix = love.graphics.newShader[[
    // vec4 light sources: x, y, z is the radius, a is the color ID
    extern vec4 lightSources[125];
    extern vec4 lightColors[125];
    extern number n_lights;
    extern number shaderType; // 1 is saturation, 2 is mixer
    extern number shaderVal;

    extern number redVal;
    extern number greenVal;
    extern number blueVal;

    vec4 effect( vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords ) {
        
        number redAdj = 0;
        number greenAdj = 0;
        number blueAdj = 0;

        for (int i = 0; i < n_lights; ++i) {
            vec4 src = lightSources[i];
            vec4 colorSrc = lightColors[i];
            if (src.z > 0) { // z is radius
                number distance = pow(pow(screen_coords.x - src.x, 2) + pow(screen_coords.y - src.y, 2), 0.5);
                number colorAdjust = 1 - (distance / src.z);
                if (colorAdjust < 0) {
                    colorAdjust = 0;
                }

                redAdj = redAdj + (colorSrc.x * colorAdjust);
                greenAdj = greenAdj + (colorSrc.y * colorAdjust);
                blueAdj = blueAdj + (colorSrc.z * colorAdjust);
            }
        }

        number maxAdj = 0.35;
        if (redAdj > maxAdj) { redAdj = maxAdj; }
        if (greenAdj > maxAdj) { greenAdj = maxAdj; }
        if (blueAdj > maxAdj) { blueAdj = maxAdj; }

        vec4 pixel = Texel(texture, texture_coords);
        vec3 pixel3 = vec3(pixel.r + redAdj, pixel.g + greenAdj, pixel.b + blueAdj);

        if (shaderType == 1) {
            const vec3 W = vec3(0.2125, 0.7154, 0.0721);
            vec3 intensity = vec3(dot(pixel3, W));
            vec3 newPixel = mix(intensity, pixel3, shaderVal);
            return vec4(newPixel.r, newPixel.g, newPixel.b, pixel.a); 
        }

        if (shaderType == 2) {
            return vec4(pixel3.r * redVal, pixel3.g * greenVal, pixel3.b * blueVal, pixel.a);
        }

        return vec4(pixel3.r, pixel3.g, pixel3.b, pixel.a);        
    }
]]

-- White damage flash
shaders.whiteout = love.graphics.newShader[[
    vec4 effect( vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords ) {
        vec4 pixel = Texel(texture, texture_coords);
        if (pixel.a == 1) {
            return vec4(1, 1, 1, 1);
        } else {
            return vec4(0, 0, 0, 0);
        }
    }
]]

-- Saturation
shaders.saturation = love.graphics.newShader[[
    // https://github.com/minus34/cesium1/blob/master/Cesium/Shaders/Builtin/Functions/saturation.glsl
    extern number shaderVal;
    vec4 effect( vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords ) {

        vec4 pixel = Texel(texture, texture_coords);
        vec3 pixel3 = vec3(pixel.r, pixel.g, pixel.b);

        const vec3 W = vec3(0.2125, 0.7154, 0.0721);
        vec3 intensity = vec3(dot(pixel3, W));
        vec3 newPixel = mix(intensity, pixel3, shaderVal);

        return vec4(newPixel.r, newPixel.g, newPixel.b, pixel.a);
    }
]]

function shaders:update(dt)
    if #lightSources > 0 then
        local vec4list = {}
        local vec4colors = {}
        for i=1,#lightSources do
            local src = lightSources[i]
            local newX, newY = cam:cameraCoords(src.x, src.y)
            local radius = src.rad * (scale+cam.scaleAdjust) -- NOTE: this is the only point where these values are scaled
            if lightSources[i].dead then radius = 0 end
            vec4list[i] = {newX, newY, radius, 1} -- 1 is 'fire' (not used anymore)
            vec4colors[i] = lightSources[i].color
        end
        shaders.multiTrueLight:send("lightSources", unpack(vec4list))
        shaders.multiTrueLight:send("n_lights", #vec4list)
        shaders.multiTrueLight:send("globalScale", scale)
        shaders.mix:send("lightSources", unpack(vec4list))
        shaders.mix:send("lightColors", unpack(vec4colors))
        shaders.mix:send("n_lights", #vec4list)
        shaders.multiTrueLight:send("darkVal", gameMap.dark/100)
        if gameMap.darkType == "amethyst" then
            shaders.multiTrueLight:send("darkType", 2)
        elseif gameMap.darkType == "darkPurple" then
            shaders.multiTrueLight:send("darkType", 3)
        elseif gameMap.darkType == "darkGreen" then
            shaders.multiTrueLight:send("darkType", 4)
        elseif gameMap.darkType == "full" then
            shaders.multiTrueLight:send("darkType", 0)
        else
            shaders.multiTrueLight:send("darkType", 1)
        end
    end

    if gamestate == 1 then -- reset mix back to 1 each frame
        shaders.mix:send("redVal", 1)
        shaders.mix:send("greenVal", 1)
        shaders.mix:send("blueVal", 1)
    end

    if gameMap.shader == "mixer" then
        if gamestate == 0.2 then
            shaders.mix:send("redVal", menu.redMult)
            shaders.mix:send("greenVal", menu.greenMult)
            shaders.mix:send("blueVal", menu.blueMult)
        end
        if background.id == "cloudBoss1" then
            shaders.mix:send("redVal", 0.5)
            shaders.mix:send("greenVal", 0.5)
            shaders.mix:send("blueVal", 0.5)
        end
        if background.id == "cloudBoss2" then
            shaders.mix:send("redVal", 0.88)
            shaders.mix:send("greenVal", 1.08)
            shaders.mix:send("blueVal", 0.95)
        end
    end

    if gameMap.shader then
        if gameMap.shader == "saturation" then
            shaders.mix:send("shaderType", 1) -- 1 is saturation
        elseif gameMap.shader == "mixer" then
            shaders.mix:send("shaderType", 2) -- 2 is mixer
        end

        if gameMap.shaderVal then
            shaders.mix:send("shaderVal", gameMap.shaderVal)
        end
    end
end

function shaders:color(obj)
    if obj.colorImmune then
        -- don't set any shader
    else
        love.graphics.setShader(shaders.mix)
    end
end
