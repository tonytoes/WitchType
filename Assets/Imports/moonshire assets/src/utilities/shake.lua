-- This file handles all things related to screenshake

shake = {}

function shake:init()
  shake.time = 0       -- Timer keeping track of shake duration
  shake.fade = true    -- Whether or not the shake intensity fades out
  shake.fadeSpeed = 0 -- How fast the fade is
  shake.intensity = 0  -- Intensity of the shake (in pixels)
  shake.speed = 0      -- Duration between camera movements (in seconds)
  shake.speedTimer = 0 -- Counts down from speed in real time to change shake dir
  shake.dir = 1        -- Tracks if the camera will shift left or right
end

function shake:start(t, i, s, f, f_speed)
  if settings.screenshake then
    if shake.intensity > i then return end -- prevents smaller shakes from cancelling bigger ones

    shake.time = t
    shake.intensity = i
    shake.speed = s
    shake.speedTimer = s
    shake.fade = f or true
    shake.fadeSpeed = f_speed or 5

    shake.count = 0
    shake.dir = 1
    
  end
end

function shake:stop()
  shake.time = t
  shake.intensity = i
  shake.speed = s
  shake.fade = f or true
  shake.fadeSpeed = f_speed or 10
end

-- be sure to call after cam:update()
function shake:update(dt)

  shake.time = updateTimer(shake.time, dt)

  if shake.time > 0 or (shake.fade and shake.intensity > 0) then

    -- offsets the camera based on the shake's intensity and direction
    cam:lookAt(cam.x + (shake.intensity * shake.dir), cam.y)

    if shake.speedTimer <= 0 then
      -- When the timer hits zero, change the direction of the camera offset
      shake.dir = shake.dir * -1
      shake.speedTimer = shake.speed
    else
      shake.speedTimer = updateTimer(shake.speedTimer, dt)
    end

    -- After shake time is up, start fading the intensity
    if shake.time <= 0 and shake.fade and shake.intensity > 0 then
      shake.intensity = shake.intensity - (dt * shake.fadeSpeed)
    end

  else
    cam:lookAt(cam.x, cam.y)
  end

end

function shake:standard(val)

  if not val then val = 1 end

  if val == 1 then
    shake:start(0.1, 1, 0.03)
  elseif val == 2 then
    shake:start(0.1, 2, 0.03)
  elseif val == 3 then
    shake:start(0.1, 3, 0.03)
  end
end
