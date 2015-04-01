Block = {}
Block.__index = Block



-- function Block.create()
-- 	local self = {}
-- 	setmetatable(self,Block)
-- 	self.xPix = 0
-- 	self.yPix = 0
-- 	self.xCoor = 0
-- 	self.yCoor = 0
-- 	self.moving = true
-- 	return self
-- end

function Block:update(dt)
	-- falling speed needs to be 1/9th per sec
	-- self.yPix = self.yPix + 20 * (dt * 2) -- dt is in seconds
	-- self.yCoor = math.floor(self.yPix / 20)
	self.yCoor = self.yCoor - self.offSetY
	self.xCoor = self.xCoor - self.offSetx
	self.yCoor = math.floor(BlockSet.yPix / 20) + self.offSetY
	self.xCoor = math.floor(BlockSet.xPix / 20) + self.offSetx
	-- print("self.yCoor is " .. self.yCoor)
end

function updateSet(dt)
		--[[ this translates the x and y positions from pixels to my own
	coordinates so i can make sure the they always stay in the proper
	region --]]
	BlockSet.yPix = BlockSet.yPix + 20 * (dt * 2)
	BlockSet.yCoor = math.floor(BlockSet.yPix / 20)
	-- print("BlockSet.yCoor is " .. BlockSet.yCoor)
end

function Block:draw()
	-- love.graphics.draw(imgBlock,self.x, self.y)
	love.graphics.setColor(100, 23,213, 255)
	love.graphics.rectangle("fill", self.xCoor * 20, self.yCoor * 20, 20, 20)
end

function drawSet()
	love.graphics.setColor(25,50,75,255)
	love.graphics.rectangle("fill", BlockSet.xCoor * 20, BlockSet.yCoor * 20, 80, 60)
end

function spawnBlocks()
	if rdyForNewMovBlock == true then
		-- table.insert(movingBlocks, Block.create())
		createBlockSet()
		Block.create()
		rdyForNewMovBlock = false
	end
end

function createBlockSet()
	BlockSet = {}
	BlockSet.xCoor = 0
	BlockSet.yCoor = 0
	BlockSet.xPix = 20 * BlockSet.xCoor
	BlockSet.yPix = 20 * BlockSet.yCoor
	return BlockSet
end

function Block.create()
	if thisBlock == 1 then
		local self = {}
		setmetatable(self,Block)
		self.xCoor = 0
		self.yCoor = 0
		self.offSetY = self.yCoor
		self.offSetx = self.xCoor
		-- self.xPix = 20 * self.xCoor
		-- self.yPix = 20 * self.yCoor
		table.insert(movingBlocks, self)

		local self = {}
		setmetatable(self,Block)
		self.xCoor = 1
		self.yCoor = 0
		self.offSetY = self.yCoor
		self.offSetx = self.xCoor
		-- self.xPix = 20 * self.xCoor
		-- self.yPix = 20 * self.yCoor
		table.insert(movingBlocks, self)

		local self = {}
		setmetatable(self,Block)
		self.xCoor = 1
		self.yCoor = 1
		self.offSetY = self.yCoor
		self.offSetx = self.xCoor
		-- self.xPix = 20 * self.xCoor
		-- self.yPix = 20 * self.yCoor
		table.insert(movingBlocks, self)

		local self = {}
		setmetatable(self,Block)
		self.xCoor = 2
		self.yCoor = 1
		self.offSetY = self.yCoor
		self.offSetx = self.xCoor
		-- self.xPix = 20 * self.xCoor
		-- self.yPix = 20 * self.yCoor
		table.insert(movingBlocks, self)
	end
end