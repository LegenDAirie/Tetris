Chillin = {}
Chillin.__index = Chillin

function Chillin.create(x,y)
	local self = {}
	setmetatable(self,Chillin)
	self.xCoor = x
	self.yCoor = y
	print(self.xCoor)
	table.insert(chillingBlocks, self)
end

function Chillin:draw()
	love.graphics.setColor(50, 123,213, 255)
	love.graphics.rectangle("fill", self.xCoor * 20, self.yCoor * 20, 20, 20)
end