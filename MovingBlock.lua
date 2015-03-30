Block = {}
Block.__index = Block

function Block.create()
	local self = {}
	setmetatable(self,Block)
	self.x = 200
	self.y = 200
	self.falling = true
	self.speed = 200
	return self
end

function Block:update(dt)
	self.y = self.y + dt * self.speed
	if self.y > 300 then
		self.alive = false
	end
end

function Block:draw()
	love.graphics.draw(imgSprites,self.x,self.y)
end

function spawnBlock(dt)
		if once == true then
		table.insert(blocks, Block.create())
		once = false
	end
end