-- When an enemy takes damage, it'll display the damage amount
damages = {}

function damages:spawnDamage(x, y, val, args)

	if val == 0 or settings.showDamage == false then return end

	local damage = {}

  -- starting position of the damage text
  damage.x = x
  damage.y = y

  -- Information for the bouncing tween used to animate the text
  damage.start_y = damage.y
  damage.alpha = 100
	damage.val = val * -1
	damage.jump_tween_x = nil
	damage.jump_tween_y = nil
	damage.alpha_tween = nil
	damage.dead = false

	if args and args.color then damage.color = args.color end
	if args and args.text then damage.val = args.text end
	if args and args.timeFactor then damage.timeFactor = args.timeFactor end

	damage.flashState = 0
	damage.flashTimer = 0
	if damage.color and damage.color:startswith("flash") then
		damage.flashMaxTimer = 0.08
		damage.flashTimer = damage.flashMaxTimer
		damage.flashState = 1
	end

  -- Random value determining how far left or right the text will bounce
	damage.rx = math.random(-16, 16)

	function damage:update(dt)

		local factor = self.timeFactor
		if not factor then factor = 1 end

		if self.flashState ~= 0 then
			self.flashTimer = self.flashTimer - dt
			if self.flashTimer < 0 then
				self.flashTimer = self.flashMaxTimer
				self.flashState = self.flashState * -1
			end
		end

		local function on_fade_complete()
			self.jump_tween_x = nil
			self.jump_tween_y = nil
			self.alpha_tween = nil
			self.dead = true
		end

		local function on_y_complete()
			local sy = self.start_y-12
			self.jump_tween_y = flux.to(self, 0.6*factor, {y = sy}):ease("quadin")
			self.alpha_tween = flux.to(self, 0.6*factor, {alpha = 0}):oncomplete(on_fade_complete):ease("cubicout")
		end

		if self.jump_tween_x == nil then
			local rx = self.x + self.rx
			self.jump_tween_x = flux.to(self, 1*factor, {x = rx})
		end
		if self.jump_tween_y == nil then
			self.jump_tween_y = flux.to(self, 0.4*factor, {y = y - 32}):oncomplete(on_y_complete):ease("cubicout")
		end
		if self.alpha_tween == nil then
			self.alpha_tween = flux.to(self, 0.2*factor, {alpha = 255}):ease("quadout")
		end
	end

  table.insert(damages, damage)

end

function damages:update(dt)

  for i,d in ipairs(self) do
    d:update(dt)
  end

  -- Iterate through all damages in reverse to remove dead ones from table
  for i=#damages,1,-1 do
    if damages[i].dead then
      table.remove(damages, i)
    end
  end

end

function damages:draw()
	setWhite()
	local numScale = 0.1
	local offset = 0.5
	love.graphics.setLineWidth(1)
  	for _,d in ipairs(damages) do
		if type(d.val) == "string" then
			damages:setColor(d.color, d.alpha/255, d.flashState)
			love.graphics.setFont(fonts.damageText)
			love.graphics.printf(d.val, d.x-1000, d.y, 2000, "center")
		else
			local value = math.abs(d.val)
			if value > 99 then value = 99 end

			if value < 10 then
				damages:drawNumber(d.x, d.y, value, numScale, d)
				damages:drawMinus(d.x-4.75, d.y, d, numScale)
			else
				local tens = tonumber(string.sub(tostring(value), 1, 1))
				local ones = tonumber(string.sub(tostring(value), 2, 2))

				damages:drawNumber(d.x, d.y, tens, numScale, d)
				if tens == 1 then -- width is less
					damages:drawNumber(d.x+4.75, d.y, ones, numScale, d)
					damages:drawMinus(d.x-3.75, d.y, d, numScale)
				else
					damages:drawNumber(d.x+5.75, d.y, ones, numScale, d)
					damages:drawMinus(d.x-4.75, d.y, d, numScale)
				end
			end
		end
	end
	setWhite()
end

function damages:drawNumber(x, y, num, numScale, d)
	local spr = sprites.num[num]

	if spr then
		damages:setColor(d.color, d.alpha/255, d.flashState)
		love.graphics.draw(spr, x, y, nil, numScale, numScale, spr:getWidth()/2, spr:getHeight()/2)

		spr = sprites.num.frames[num]
		love.graphics.setColor(1,1,1,d.alpha/255)
		love.graphics.draw(spr, x, y, nil, numScale, numScale, spr:getWidth()/2, spr:getHeight()/2)
	end
end

function damages:drawMinus(x, y, d, numScale)
	damages:setColor(d.color, d.alpha/255, d.flashState)
	love.graphics.draw(sprites.num.minus, x, y, nil, numScale, numScale, sprites.num.minus:getWidth()/2, sprites.num.minus:getHeight()/2)

	love.graphics.setColor(1,1,1,d.alpha/255)
	love.graphics.draw(sprites.num.frames.minus, x, y, nil, numScale, numScale, sprites.num.frames.minus:getWidth()/2, sprites.num.frames.minus:getHeight()/2)
end

function damages:setColor(colorId, alph, flashState)
	if colorId == "yellow" then
		love.graphics.setColor(250/255, 201/255, 91/255, alph)
	elseif colorId == "green" then
		love.graphics.setColor(79/255, 217/255, 79/255, alph)
	elseif colorId == "flashGreen" then
		if flashState and flashState == 1 then
			love.graphics.setColor(79/255, 217/255, 79/255, alph)
		else
			love.graphics.setColor(196/255, 255/255, 196/255, alph)
		end
	elseif colorId == "flashYellow" then
		if flashState and flashState == 1 then
			love.graphics.setColor(250/255, 201/255, 91/255, alph)
		else
			love.graphics.setColor(215/255, 59/255, 74/255, alph) -- red
		end
	elseif colorId == "flashRedWhite" then
		if flashState and flashState == 1 then love.graphics.setColor(1, 1, 1, alph) else love.graphics.setColor(215/255, 59/255, 74/255, alph) end
	elseif colorId == "flashRed" then
		if flashState and flashState == 1 then love.graphics.setColor(250/255, 152/255, 162/255, alph) else love.graphics.setColor(215/255, 59/255, 74/255, alph) end
	else
		love.graphics.setColor(215/255, 59/255, 74/255, alph) -- red
	end
end

function damages:deleteAll()
    local i = #damages
    removeTable(damages)
end
