Chillin = {}
Chillin.__index = Chillin

function Chillin.create(x,y)
	local self = {}
	setmetatable(self,Chillin)
	self.xCoor = x
	self.yCoor = y
	table.insert(chillingBlocks[y + 1], self)
	-- keeps track of how many blocks are on each line
	isLineFull[y + 1] = isLineFull[y + 1] + 1 
end

function Chillin:draw()
	love.graphics.setColor(50, 123,213, 255)
	love.graphics.rectangle("fill", self.xCoor * 20, self.yCoor * 20, 20, 20)
end

function Chillin:dropDown(k)
	self.yCoor = self.yCoor + 1
end
