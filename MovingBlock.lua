Block = {}
Block.__index = Block



function Block.create()
	local self = {}
	setmetatable(self,Block)
	self.xPix = 0
	self.yPix = 0
	self.xCoor = 0
	self.yCoor = 0
	self.moving = true
	return self
end

function Block:update(dt)
	-- falling speed needs to be 1/9th per sec
	self.yPix = self.yPix + 20 * (dt * 2) -- dt is in seconds

	--[[ this translates the x and y positions from pixels to my own
	coordinates so i can make sure the they always stay in the proper
	region --]]
	self.yCoor = math.floor(self.yPix / 20)
	print("self.yCoor is " .. self.yCoor)
end

function Block:draw()
	-- love.graphics.draw(imgBlock,self.x, self.y)
	love.graphics.rectangle("fill", self.xCoor * 20, self.yCoor * 20, 20, 20)
end

function spawnBlocks()
	if rdyForNewMovBlock == true then
		table.insert(movingBlocks, Block.create())
		rdyForNewMovBlock = false
	end
end

function love.keypressed(key,unicode)
end