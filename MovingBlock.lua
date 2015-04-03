Block = {}
Block.__index = Block

function Block:update(dt)
	if state == 1 then
		self.yCoor = BlockSet.yCoor + self.offSetY1
		self.xCoor = BlockSet.xCoor + self.offSetx1
	elseif state == 2 then
		self.yCoor = BlockSet.yCoor + self.offSetY2
		self.xCoor = BlockSet.xCoor + self.offSetx2
	elseif state == 3 then
		self.yCoor = BlockSet.yCoor + self.offSetY3
		self.xCoor = BlockSet.xCoor + self.offSetx3
	elseif state == 4 then
		self.yCoor = BlockSet.yCoor + self.offSetY4
		self.xCoor = BlockSet.xCoor + self.offSetx4
	end
end

function updateSet(dt)

		--[[ this translates the x and y positions from pixels to my own
	coordinates so i can make sure the they always stay in the proper
	region --]]
	-- falling speed needs to be 1/9th per sec
	checkForChange = BlockSet.yCoor
	BlockSet.yPix = BlockSet.yPix + 20 * (dt * 2)
	BlockSet.yCoor = math.floor(BlockSet.yPix / 20)


	-- if collisionFalling() then
	-- 	BlockSet.yCoor = BlockSet.yCoor - 1
	-- 	hanzoDanzoDonzo()
	-- end

	for i,b in ipairs(movingBlocks) do
		b:update(dt)
	end

end

function Block:draw()
	love.graphics.setColor(100, 23,213, 255)
	love.graphics.rectangle("fill", self.xCoor * 20, self.yCoor * 20, 20, 20)
end

function drawSet()
	love.graphics.setColor(25,50,75,255)
	love.graphics.rectangle("fill", BlockSet.xCoor * 20, BlockSet.yCoor * 20, 80, 60)
end

function spawnBlocks()
	if rdyForNewMovBlock == true then
		state = 1
		createBlockSet()
		Block.create()
		rdyForNewMovBlock = false
	end
end

function createBlockSet()
	BlockSet = {}
	BlockSet.xCoor = 0
	BlockSet.yCoor = -1
	BlockSet.xPix = 20 * BlockSet.xCoor
	BlockSet.yPix = 20 * BlockSet.yCoor
	return BlockSet
end