blasts = {}

function blasts:standard(x, y, val)
	if not val then val = 1 end -- val can't be 0

	if val == 1 then
		spawnBlast(x, y, 30, nil, 0.19)
	elseif val == 2 then
		spawnBlast(x, y, 44, nil, 0.22)
	elseif val == 3 then
		spawnBlast(x, y, 64, nil, 0.26)
	elseif val == 4 then
		spawnBlast(x, y, 96, nil, 0.3)
	end
end

function spawnBlast(x, y, size, color, time)
	blast = {}
	blast.x = x
	blast.y = y
	blast.color = color
	blast.radius = 1
	blast.max_radius = size
	blast.time = time
	blast.timer = 0.25
	blast.timer2 = time + 1
	blast.dead = false
	blast.alpha = 255
	blast.state = 0
	blast.colorImmune = true

	if color == "soft" then
		blast.alpha = 120
	end

	if color == "softer" then
		blast.alpha = 90
	end

	function blast:update(dt, i)
		self.timer2 = self.timer2 - dt
		if self.timer2 < 0 then
			self.dead = true
		end

		if self.state == 0 then
			local max = self.max_radius
			flux.to(self, self.time, { radius = max })
			flux.to(self, self.time, { alpha = 0 }):ease("quadout")
			self.state = 1
		end
	end

	function blast:draw()
		love.graphics.setColor(1, 1, 1, self.alpha/255)

		if self.color == "scorch" then
			love.graphics.setColor(0.15, 0.15, 0.15, self.alpha/255)
		end

		love.graphics.circle("fill", self.x, self.y, self.radius)
	end

	table.insert(blasts, blast)
end

function blasts:update(dt)
	for i,w in ipairs(blasts) do
		w:update(dt, i)
	end

	local i = table.getn(blasts)
	while i > 0 do
		if blasts[i].dead == true then
			table.remove(blasts, i)
		end
		i = i - 1
	end
end

function blasts:draw()
	for _,b in ipairs(blasts) do
		love.graphics.setColor(1, 1, 1, b.alpha/255)
		love.graphics.circle("fill", b.x, b.y, b.radius)
	end
end
