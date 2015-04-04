function Block.create()
	movingBlocks = {}
	nextBlocks = {}
	thisBlock = nextBlock
	nextBlock = math.random(1,7)

	if thisBlock == 1 then
		-- z Block
		local self = {}
		-- first block
		setmetatable(self,Block)
		self.yCoor = 1
		self.xCoor = 0
		--stage 1
		self.offSetY1 = 1
		self.offSetx1 = 0
		--stage 2
		self.offSetY2 = 0
		self.offSetx2 = 2
		-- stage 3
		self.offSetY3 = 1
		self.offSetx3 = 0
		--stage 4
		self.offSetY4 = 0
		self.offSetx4 = 2
		table.insert(movingBlocks, self)

		local self = {}
		-- second block
		setmetatable(self,Block)
		self.yCoor = 1
		self.xCoor = 1
		-- stage1
		self.offSetY1 = 1
		self.offSetx1 = 1
		-- stage 2
		self.offSetY2 = 1
		self.offSetx2 = 1
		-- stage 3
		self.offSetY3 = 1
		self.offSetx3 = 1
		-- stage 4
		self.offSetY4 = 1
		self.offSetx4 = 1
		table.insert(movingBlocks, self)

		local self = {}
		-- therd block
		setmetatable(self,Block)
		self.yCoor = 2
		self.xCoor = 1
		-- stage 1
		self.offSetY1 = 2
		self.offSetx1 = 1
		-- stage 2
		self.offSetY2 = 1
		self.offSetx2 = 2
		-- stage 3
		self.offSetY3 = 2
		self.offSetx3 = 1
		-- stage 4
		self.offSetY4 = 1
		self.offSetx4 = 2
		table.insert(movingBlocks, self)

		local self = {}
		-- forth block
		setmetatable(self,Block)
		self.yCoor = 2
		self.xCoor = 2
		-- stage 1
		self.offSetY1 = 2
		self.offSetx1 = 2
		-- stage 2
		self.offSetY2 = 2
		self.offSetx2 = 1
		-- stage 3
		self.offSetY3 = 2
		self.offSetx3 = 2
		-- stage 4
		self.offSetY4 = 2
		self.offSetx4 = 1
		table.insert(movingBlocks, self)
	elseif thisBlock == 2 then
		-- backwards Z block
		local self = {}
		-- first block
		setmetatable(self,Block)
		self.yCoor = 2
		self.xCoor = 0
		--stage 1
		self.offSetY1 = 2
		self.offSetx1 = 0
		--stage 2
		self.offSetY2 = 0
		self.offSetx2 = 0
		-- stage 3
		self.offSetY3 = 2
		self.offSetx3 = 0
		--stage 4
		self.offSetY4 = 0
		self.offSetx4 = 0
		table.insert(movingBlocks, self)

		local self = {}
		-- second block
		setmetatable(self,Block)
		self.yCoor = 2
		self.xCoor = 1
		-- stage1
		self.offSetY1 = 2
		self.offSetx1 = 1
		-- stage 2
		self.offSetY2 = 1
		self.offSetx2 = 0
		-- stage 3
		self.offSetY3 = 2
		self.offSetx3 = 1
		-- stage 4
		self.offSetY4 = 1
		self.offSetx4 = 0
		table.insert(movingBlocks, self)

		local self = {}
		-- therd block
		setmetatable(self,Block)
		self.yCoor = 1
		self.xCoor = 1
		-- stage 1
		self.offSetY1 = 1
		self.offSetx1 = 1
		-- stage 2
		self.offSetY2 = 1
		self.offSetx2 = 1
		-- stage 3
		self.offSetY3 = 1
		self.offSetx3 = 1
		-- stage 4
		self.offSetY4 = 1
		self.offSetx4 = 1
		table.insert(movingBlocks, self)

		local self = {}
		-- forth block
		setmetatable(self,Block)
		self.yCoor = 1
		self.xCoor = 2
		-- stage 1
		self.offSetY1 = 1
		self.offSetx1 = 2
		-- stage 2
		self.offSetY2 = 2
		self.offSetx2 = 1
		-- stage 3
		self.offSetY3 = 1
		self.offSetx3 = 2
		-- stage 4
		self.offSetY4 = 2
		self.offSetx4 = 1
		table.insert(movingBlocks, self)
	elseif thisBlock == 3 then
		-- L block
		local self = {}
		-- first block
		setmetatable(self,Block)
		self.yCoor = 2
		self.xCoor = 0
		--stage 1
		self.offSetY1 = 2
		self.offSetx1 = 0
		--stage 2
		self.offSetY2 = 0
		self.offSetx2 = 0
		-- stage 3
		self.offSetY3 = 1
		self.offSetx3 = 2
		--stage 4
		self.offSetY4 = 2
		self.offSetx4 = 2
		table.insert(movingBlocks, self)

		local self = {}
		-- second block
		setmetatable(self,Block)
		self.yCoor = 1
		self.xCoor = 0
		--stage 1
		self.offSetY1 = 1
		self.offSetx1 = 0
		--stage 2
		self.offSetY2 = 0
		self.offSetx2 = 1
		-- stage 3
		self.offSetY3 = 2
		self.offSetx3 = 2
		--stage 4
		self.offSetY4 = 2
		self.offSetx4 = 1
		table.insert(movingBlocks, self)

		local self = {}
		-- therd block
		setmetatable(self,Block)
		self.yCoor = 1
		self.xCoor = 1
		--stage 1
		self.offSetY1 = 1
		self.offSetx1 = 1
		--stage 2
		self.offSetY2 = 1
		self.offSetx2 = 1
		-- stage 3
		self.offSetY3 = 2
		self.offSetx3 = 1
		--stage 4
		self.offSetY4 = 1
		self.offSetx4 = 1
		table.insert(movingBlocks, self)

		local self = {}
		-- first block
		setmetatable(self,Block)
		self.yCoor = 1
		self.xCoor = 2
		--stage 1
		self.offSetY1 = 1
		self.offSetx1 = 2
		--stage 2
		self.offSetY2 = 2
		self.offSetx2 = 1
		-- stage 3
		self.offSetY3 = 2
		self.offSetx3 = 0
		--stage 4
		self.offSetY4 = 0
		self.offSetx4 = 1
		table.insert(movingBlocks, self)
	elseif thisBlock == 4 then
		-- backwards L
		local self = {}
		-- first block
		setmetatable(self,Block)
		self.yCoor = 1
		self.xCoor = 0
		--stage 1
		self.offSetY1 = 1
		self.offSetx1 = 0
		--stage 2
		self.offSetY2 = 0
		self.offSetx2 = 1
		-- stage 3
		self.offSetY3 = 2
		self.offSetx3 = 2
		--stage 4
		self.offSetY4 = 2
		self.offSetx4 = 1
		table.insert(movingBlocks, self)

		local self = {}
		-- second block
		setmetatable(self,Block)
		self.yCoor = 1
		self.xCoor = 1
		--stage 1
		self.offSetY1 = 1
		self.offSetx1 = 1
		--stage 2
		self.offSetY2 = 1
		self.offSetx2 = 1
		-- stage 3
		self.offSetY3 = 2
		self.offSetx3 = 1
		--stage 4
		self.offSetY4 = 1
		self.offSetx4 = 1
		table.insert(movingBlocks, self)

		local self = {}
		-- thred block
		setmetatable(self,Block)
		self.yCoor = 1
		self.xCoor = 2
		--stage 1
		self.offSetY1 = 1
		self.offSetx1 = 2
		--stage 2
		self.offSetY2 = 2
		self.offSetx2 = 1
		-- stage 3
		self.offSetY3 = 2
		self.offSetx3 = 0
		--stage 4
		self.offSetY4 = 0
		self.offSetx4 = 1
		table.insert(movingBlocks, self)

		local self = {}
		-- fourth block
		setmetatable(self,Block)
		self.yCoor = 2
		self.xCoor = 2
		--stage 1
		self.offSetY1 = 2
		self.offSetx1 = 2
		--stage 2
		self.offSetY2 = 2
		self.offSetx2 = 0
		-- stage 3
		self.offSetY3 = 1
		self.offSetx3 = 0
		--stage 4
		self.offSetY4 = 0
		self.offSetx4 = 2
		table.insert(movingBlocks, self)
	elseif thisBlock == 5 then
		-- T blocka
		local self = {}
		-- first block
		setmetatable(self,Block)
		self.yCoor = 1
		self.xCoor = 0
		--stage 1
		self.offSetY1 = 1
		self.offSetx1 = 0
		--stage 2
		self.offSetY2 = 0
		self.offSetx2 = 1
		-- stage 3
		self.offSetY3 = 2
		self.offSetx3 = 2
		--stage 4
		self.offSetY4 = 2
		self.offSetx4 = 1
		table.insert(movingBlocks, self)

		local self = {}
		-- second block
		setmetatable(self,Block)
		self.yCoor = 1
		self.xCoor = 1
		--stage 1
		self.offSetY1 = 1
		self.offSetx1 = 1
		--stage 2
		self.offSetY2 = 1
		self.offSetx2 = 1
		-- stage 3
		self.offSetY3 = 2
		self.offSetx3 = 1
		--stage 4
		self.offSetY4 = 1
		self.offSetx4 = 1
		table.insert(movingBlocks, self)

		local self = {}
		-- therd block
		setmetatable(self,Block)
		self.yCoor = 2
		self.xCoor = 1
		--stage 1
		self.offSetY1 = 2
		self.offSetx1 = 1
		--stage 2
		self.offSetY2 = 1
		self.offSetx2 = 0
		-- stage 3
		self.offSetY3 = 1
		self.offSetx3 = 1
		--stage 4
		self.offSetY4 = 1
		self.offSetx4 = 2
		table.insert(movingBlocks, self)

		local self = {}
		-- fourth block
		setmetatable(self,Block)
		self.yCoor = 1
		self.xCoor = 2
		--stage 1
		self.offSetY1 = 1
		self.offSetx1 = 2
		--stage 2
		self.offSetY2 = 2
		self.offSetx2 = 1
		-- stage 3
		self.offSetY3 = 2
		self.offSetx3 = 0
		--stage 4
		self.offSetY4 = 0
		self.offSetx4 = 1
		table.insert(movingBlocks, self)
	elseif thisBlock == 6 then
		-- straight block
		local self = {}
		-- first block
		setmetatable(self,Block)
		self.yCoor = 1
		self.xCoor = 0
		--stage 1
		self.offSetY1 = 1
		self.offSetx1 = 0
		--stage 2
		self.offSetY2 = 0
		self.offSetx2 = 2
		-- stage 3
		self.offSetY3 = 1
		self.offSetx3 = 0
		--stage 4
		self.offSetY4 = 0
		self.offSetx4 = 2
		table.insert(movingBlocks, self)

		local self = {}
		-- second block
		setmetatable(self,Block)
		self.yCoor = 1
		self.xCoor = 1
		--stage 1
		self.offSetY1 = 1
		self.offSetx1 = 1
		--stage 2
		self.offSetY2 = 1
		self.offSetx2 = 2
		-- stage 3
		self.offSetY3 = 1
		self.offSetx3 = 1
		--stage 4
		self.offSetY4 = 1
		self.offSetx4 = 2
		table.insert(movingBlocks, self)

		local self = {}
		-- therd block
		setmetatable(self,Block)
		self.yCoor = 1
		self.xCoor = 2
		--stage 1
		self.offSetY1 = 1
		self.offSetx1 = 2
		--stage 2
		self.offSetY2 = 2
		self.offSetx2 = 2
		-- stage 3
		self.offSetY3 = 1
		self.offSetx3 = 2
		--stage 4
		self.offSetY4 = 2
		self.offSetx4 = 2
		table.insert(movingBlocks, self)

		local self = {}
		-- fourth block
		setmetatable(self,Block)
		self.yCoor = 1
		self.xCoor = 3
		--stage 1
		self.offSetY1 = 1
		self.offSetx1 = 3
		--stage 2
		self.offSetY2 = 3
		self.offSetx2 = 2
		-- stage 3
		self.offSetY3 = 1
		self.offSetx3 = 3
		--stage 4
		self.offSetY4 = 3
		self.offSetx4 = 2
		table.insert(movingBlocks, self)
	elseif thisBlock == 7 then
		-- square block
		local self = {}
		-- first block
		setmetatable(self,Block)
		self.yCoor = 1
		self.xCoor = 1
		--stage 1
		self.offSetY1 = 1
		self.offSetx1 = 1
		--stage 2
		self.offSetY2 = 1
		self.offSetx2 = 1
		-- stage 3
		self.offSetY3 = 1
		self.offSetx3 = 1
		--stage 4
		self.offSetY4 = 1
		self.offSetx4 = 1
		table.insert(movingBlocks, self)

		local self = {}
		-- second block
		setmetatable(self,Block)
		self.yCoor = 1
		self.xCoor = 2
		--stage 1
		self.offSetY1 = 1
		self.offSetx1 = 2
		--stage 2
		self.offSetY2 = 1
		self.offSetx2 = 2
		-- stage 3
		self.offSetY3 = 1
		self.offSetx3 = 2
		--stage 4
		self.offSetY4 = 1
		self.offSetx4 = 2
		table.insert(movingBlocks, self)

		local self = {}
		-- therd block
		setmetatable(self,Block)
		self.yCoor = 2
		self.xCoor = 1
		--stage 1
		self.offSetY1 = 2
		self.offSetx1 = 1
		--stage 2
		self.offSetY2 = 2
		self.offSetx2 = 1
		-- stage 3
		self.offSetY3 = 2
		self.offSetx3 = 1
		--stage 4
		self.offSetY4 = 2
		self.offSetx4 = 1
		table.insert(movingBlocks, self)

		local self = {}
		-- fourth block
		setmetatable(self,Block)
		self.yCoor = 2
		self.xCoor = 2
		--stage 1
		self.offSetY1 = 2
		self.offSetx1 = 2
		--stage 2
		self.offSetY2 = 2
		self.offSetx2 = 2
		-- stage 3
		self.offSetY3 = 2
		self.offSetx3 = 2
		--stage 4
		self.offSetY4 = 2
		self.offSetx4 = 2
		table.insert(movingBlocks, self)
	end

	if nextBlock == 1 then
		-- z Block
		local self = {}
		-- first block
		setmetatable(self,NextB)
		self.yCoor = 1
		self.xCoor = 0
		--stage 1
		self.offSetY1 = 1
		self.offSetx1 = 0
		--stage 2
		self.offSetY2 = 0
		self.offSetx2 = 2
		-- stage 3
		self.offSetY3 = 1
		self.offSetx3 = 0
		--stage 4
		self.offSetY4 = 0
		self.offSetx4 = 2
		table.insert(nextBlocks, self)

		local self = {}
		-- second block
		setmetatable(self,NextB)
		self.yCoor = 1
		self.xCoor = 1
		-- stage1
		self.offSetY1 = 1
		self.offSetx1 = 1
		-- stage 2
		self.offSetY2 = 1
		self.offSetx2 = 1
		-- stage 3
		self.offSetY3 = 1
		self.offSetx3 = 1
		-- stage 4
		self.offSetY4 = 1
		self.offSetx4 = 1
		table.insert(nextBlocks, self)

		local self = {}
		-- therd block
		setmetatable(self,NextB)
		self.yCoor = 2
		self.xCoor = 1
		-- stage 1
		self.offSetY1 = 2
		self.offSetx1 = 1
		-- stage 2
		self.offSetY2 = 1
		self.offSetx2 = 2
		-- stage 3
		self.offSetY3 = 2
		self.offSetx3 = 1
		-- stage 4
		self.offSetY4 = 1
		self.offSetx4 = 2
		table.insert(nextBlocks, self)

		local self = {}
		-- forth block
		setmetatable(self,NextB)
		self.yCoor = 2
		self.xCoor = 2
		-- stage 1
		self.offSetY1 = 2
		self.offSetx1 = 2
		-- stage 2
		self.offSetY2 = 2
		self.offSetx2 = 1
		-- stage 3
		self.offSetY3 = 2
		self.offSetx3 = 2
		-- stage 4
		self.offSetY4 = 2
		self.offSetx4 = 1
		table.insert(nextBlocks, self)
	elseif nextBlock == 2 then
		-- backwards Z block
		local self = {}
		-- first block
		setmetatable(self,NextB)
		self.yCoor = 2
		self.xCoor = 0
		--stage 1
		self.offSetY1 = 2
		self.offSetx1 = 0
		--stage 2
		self.offSetY2 = 0
		self.offSetx2 = 0
		-- stage 3
		self.offSetY3 = 2
		self.offSetx3 = 0
		--stage 4
		self.offSetY4 = 0
		self.offSetx4 = 0
		table.insert(nextBlocks, self)

		local self = {}
		-- second block
		setmetatable(self,NextB)
		self.yCoor = 2
		self.xCoor = 1
		-- stage1
		self.offSetY1 = 2
		self.offSetx1 = 1
		-- stage 2
		self.offSetY2 = 1
		self.offSetx2 = 0
		-- stage 3
		self.offSetY3 = 2
		self.offSetx3 = 1
		-- stage 4
		self.offSetY4 = 1
		self.offSetx4 = 0
		table.insert(nextBlocks, self)

		local self = {}
		-- therd block
		setmetatable(self,NextB)
		self.yCoor = 1
		self.xCoor = 1
		-- stage 1
		self.offSetY1 = 1
		self.offSetx1 = 1
		-- stage 2
		self.offSetY2 = 1
		self.offSetx2 = 1
		-- stage 3
		self.offSetY3 = 1
		self.offSetx3 = 1
		-- stage 4
		self.offSetY4 = 1
		self.offSetx4 = 1
		table.insert(nextBlocks, self)

		local self = {}
		-- forth block
		setmetatable(self,NextB)
		self.yCoor = 1
		self.xCoor = 2
		-- stage 1
		self.offSetY1 = 1
		self.offSetx1 = 2
		-- stage 2
		self.offSetY2 = 2
		self.offSetx2 = 1
		-- stage 3
		self.offSetY3 = 1
		self.offSetx3 = 2
		-- stage 4
		self.offSetY4 = 2
		self.offSetx4 = 1
		table.insert(nextBlocks, self)
	elseif nextBlock == 3 then
		-- L block
		local self = {}
		-- first block
		setmetatable(self,NextB)
		self.yCoor = 2
		self.xCoor = 0
		--stage 1
		self.offSetY1 = 2
		self.offSetx1 = 0
		--stage 2
		self.offSetY2 = 0
		self.offSetx2 = 0
		-- stage 3
		self.offSetY3 = 1
		self.offSetx3 = 2
		--stage 4
		self.offSetY4 = 2
		self.offSetx4 = 2
		table.insert(nextBlocks, self)

		local self = {}
		-- second block
		setmetatable(self,NextB)
		self.yCoor = 1
		self.xCoor = 0
		--stage 1
		self.offSetY1 = 1
		self.offSetx1 = 0
		--stage 2
		self.offSetY2 = 0
		self.offSetx2 = 1
		-- stage 3
		self.offSetY3 = 2
		self.offSetx3 = 2
		--stage 4
		self.offSetY4 = 2
		self.offSetx4 = 1
		table.insert(nextBlocks, self)

		local self = {}
		-- therd block
		setmetatable(self,NextB)
		self.yCoor = 1
		self.xCoor = 1
		--stage 1
		self.offSetY1 = 1
		self.offSetx1 = 1
		--stage 2
		self.offSetY2 = 1
		self.offSetx2 = 1
		-- stage 3
		self.offSetY3 = 2
		self.offSetx3 = 1
		--stage 4
		self.offSetY4 = 1
		self.offSetx4 = 1
		table.insert(nextBlocks, self)

		local self = {}
		-- first block
		setmetatable(self,NextB)
		self.yCoor = 1
		self.xCoor = 2
		--stage 1
		self.offSetY1 = 1
		self.offSetx1 = 2
		--stage 2
		self.offSetY2 = 2
		self.offSetx2 = 1
		-- stage 3
		self.offSetY3 = 2
		self.offSetx3 = 0
		--stage 4
		self.offSetY4 = 0
		self.offSetx4 = 1
		table.insert(nextBlocks, self)
	elseif nextBlock == 4 then
		-- backwards L
		local self = {}
		-- first block
		setmetatable(self,NextB)
		self.yCoor = 1
		self.xCoor = 0
		--stage 1
		self.offSetY1 = 1
		self.offSetx1 = 0
		--stage 2
		self.offSetY2 = 0
		self.offSetx2 = 1
		-- stage 3
		self.offSetY3 = 2
		self.offSetx3 = 2
		--stage 4
		self.offSetY4 = 2
		self.offSetx4 = 1
		table.insert(nextBlocks, self)

		local self = {}
		-- second block
		setmetatable(self,NextB)
		self.yCoor = 1
		self.xCoor = 1
		--stage 1
		self.offSetY1 = 1
		self.offSetx1 = 1
		--stage 2
		self.offSetY2 = 1
		self.offSetx2 = 1
		-- stage 3
		self.offSetY3 = 2
		self.offSetx3 = 1
		--stage 4
		self.offSetY4 = 1
		self.offSetx4 = 1
		table.insert(nextBlocks, self)

		local self = {}
		-- thred block
		setmetatable(self,NextB)
		self.yCoor = 1
		self.xCoor = 2
		--stage 1
		self.offSetY1 = 1
		self.offSetx1 = 2
		--stage 2
		self.offSetY2 = 2
		self.offSetx2 = 1
		-- stage 3
		self.offSetY3 = 2
		self.offSetx3 = 0
		--stage 4
		self.offSetY4 = 0
		self.offSetx4 = 1
		table.insert(nextBlocks, self)

		local self = {}
		-- fourth block
		setmetatable(self,NextB)
		self.yCoor = 2
		self.xCoor = 2
		--stage 1
		self.offSetY1 = 2
		self.offSetx1 = 2
		--stage 2
		self.offSetY2 = 2
		self.offSetx2 = 0
		-- stage 3
		self.offSetY3 = 1
		self.offSetx3 = 0
		--stage 4
		self.offSetY4 = 0
		self.offSetx4 = 2
		table.insert(nextBlocks, self)
	elseif nextBlock == 5 then
		-- T blocka
		local self = {}
		-- first block
		setmetatable(self,NextB)
		self.yCoor = 1
		self.xCoor = 0
		--stage 1
		self.offSetY1 = 1
		self.offSetx1 = 0
		--stage 2
		self.offSetY2 = 0
		self.offSetx2 = 1
		-- stage 3
		self.offSetY3 = 2
		self.offSetx3 = 2
		--stage 4
		self.offSetY4 = 2
		self.offSetx4 = 1
		table.insert(nextBlocks, self)

		local self = {}
		-- second block
		setmetatable(self,NextB)
		self.yCoor = 1
		self.xCoor = 1
		--stage 1
		self.offSetY1 = 1
		self.offSetx1 = 1
		--stage 2
		self.offSetY2 = 1
		self.offSetx2 = 1
		-- stage 3
		self.offSetY3 = 2
		self.offSetx3 = 1
		--stage 4
		self.offSetY4 = 1
		self.offSetx4 = 1
		table.insert(nextBlocks, self)

		local self = {}
		-- therd block
		setmetatable(self,NextB)
		self.yCoor = 2
		self.xCoor = 1
		--stage 1
		self.offSetY1 = 2
		self.offSetx1 = 1
		--stage 2
		self.offSetY2 = 1
		self.offSetx2 = 0
		-- stage 3
		self.offSetY3 = 1
		self.offSetx3 = 1
		--stage 4
		self.offSetY4 = 1
		self.offSetx4 = 2
		table.insert(nextBlocks, self)

		local self = {}
		-- fourth block
		setmetatable(self,NextB)
		self.yCoor = 1
		self.xCoor = 2
		--stage 1
		self.offSetY1 = 1
		self.offSetx1 = 2
		--stage 2
		self.offSetY2 = 2
		self.offSetx2 = 1
		-- stage 3
		self.offSetY3 = 2
		self.offSetx3 = 0
		--stage 4
		self.offSetY4 = 0
		self.offSetx4 = 1
		table.insert(nextBlocks, self)
	elseif nextBlock == 6 then
		-- straight block
		local self = {}
		-- first block
		setmetatable(self,NextB)
		self.yCoor = 1
		self.xCoor = 0
		--stage 1
		self.offSetY1 = 1
		self.offSetx1 = 0
		--stage 2
		self.offSetY2 = 0
		self.offSetx2 = 2
		-- stage 3
		self.offSetY3 = 1
		self.offSetx3 = 0
		--stage 4
		self.offSetY4 = 0
		self.offSetx4 = 2
		table.insert(nextBlocks, self)

		local self = {}
		-- second block
		setmetatable(self,NextB)
		self.yCoor = 1
		self.xCoor = 1
		--stage 1
		self.offSetY1 = 1
		self.offSetx1 = 1
		--stage 2
		self.offSetY2 = 1
		self.offSetx2 = 2
		-- stage 3
		self.offSetY3 = 1
		self.offSetx3 = 1
		--stage 4
		self.offSetY4 = 1
		self.offSetx4 = 2
		table.insert(nextBlocks, self)

		local self = {}
		-- therd block
		setmetatable(self,NextB)
		self.yCoor = 1
		self.xCoor = 2
		--stage 1
		self.offSetY1 = 1
		self.offSetx1 = 2
		--stage 2
		self.offSetY2 = 2
		self.offSetx2 = 2
		-- stage 3
		self.offSetY3 = 1
		self.offSetx3 = 2
		--stage 4
		self.offSetY4 = 2
		self.offSetx4 = 2
		table.insert(nextBlocks, self)

		local self = {}
		-- fourth block
		setmetatable(self,NextB)
		self.yCoor = 1
		self.xCoor = 3
		--stage 1
		self.offSetY1 = 1
		self.offSetx1 = 3
		--stage 2
		self.offSetY2 = 3
		self.offSetx2 = 2
		-- stage 3
		self.offSetY3 = 1
		self.offSetx3 = 3
		--stage 4
		self.offSetY4 = 3
		self.offSetx4 = 2
		table.insert(nextBlocks, self)
	elseif nextBlock == 7 then
		-- square block
		local self = {}
		-- first block
		setmetatable(self,NextB)
		self.yCoor = 1
		self.xCoor = 1
		--stage 1
		self.offSetY1 = 1
		self.offSetx1 = 1
		--stage 2
		self.offSetY2 = 1
		self.offSetx2 = 1
		-- stage 3
		self.offSetY3 = 1
		self.offSetx3 = 1
		--stage 4
		self.offSetY4 = 1
		self.offSetx4 = 1
		table.insert(nextBlocks, self)

		local self = {}
		-- second block
		setmetatable(self,NextB)
		self.yCoor = 1
		self.xCoor = 2
		--stage 1
		self.offSetY1 = 1
		self.offSetx1 = 2
		--stage 2
		self.offSetY2 = 1
		self.offSetx2 = 2
		-- stage 3
		self.offSetY3 = 1
		self.offSetx3 = 2
		--stage 4
		self.offSetY4 = 1
		self.offSetx4 = 2
		table.insert(nextBlocks, self)

		local self = {}
		-- therd block
		setmetatable(self,NextB)
		self.yCoor = 2
		self.xCoor = 1
		--stage 1
		self.offSetY1 = 2
		self.offSetx1 = 1
		--stage 2
		self.offSetY2 = 2
		self.offSetx2 = 1
		-- stage 3
		self.offSetY3 = 2
		self.offSetx3 = 1
		--stage 4
		self.offSetY4 = 2
		self.offSetx4 = 1
		table.insert(nextBlocks, self)

		local self = {}
		-- fourth block
		setmetatable(self,NextB)
		self.yCoor = 2
		self.xCoor = 2
		--stage 1
		self.offSetY1 = 2
		self.offSetx1 = 2
		--stage 2
		self.offSetY2 = 2
		self.offSetx2 = 2
		-- stage 3
		self.offSetY3 = 2
		self.offSetx3 = 2
		--stage 4
		self.offSetY4 = 2
		self.offSetx4 = 2
		table.insert(nextBlocks, self)
	end
end