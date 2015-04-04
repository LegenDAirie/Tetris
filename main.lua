require("movingBlock")
require("rotate")
require("blockCreate")
require("blockDeath")
require("chillinBlocks")
require("collision")
require("GameOver")
state = 1
pause = false

function love.load()
	math.randomseed(os.time())
	restart()
	loadResources()
end

function restart()
	movingBlocks = {}
	chillingBlocks = {}
	isLineFull = {}
	nextBlocks = {}

	nextBlock = math.random(1,2)
	rdyForNewMovBlock = true

	Line1 = {}
	Line2 = {}
	Line3 = {}
	Line4 = {}
	Line5 = {}
	Line6 = {}
	Line7 = {}
	Line8 = {}
	Line9 = {}
	Line10 = {}
	Line11 = {}
	Line12 = {}
	Line13 = {}
	Line14 = {}
	Line15 = {}
	Line16 = {}
	Line17 = {}
	Line18 = {}
	table.insert(chillingBlocks,Line1)
	table.insert(chillingBlocks,Line2)
	table.insert(chillingBlocks,Line3)
	table.insert(chillingBlocks,Line4)
	table.insert(chillingBlocks,Line5)
	table.insert(chillingBlocks,Line6)
	table.insert(chillingBlocks,Line7)
	table.insert(chillingBlocks,Line8)
	table.insert(chillingBlocks,Line9)
	table.insert(chillingBlocks,Line10)
	table.insert(chillingBlocks,Line11)
	table.insert(chillingBlocks,Line12)
	table.insert(chillingBlocks,Line13)
	table.insert(chillingBlocks,Line14)
	table.insert(chillingBlocks,Line15)
	table.insert(chillingBlocks,Line16)
	table.insert(chillingBlocks,Line17)
	table.insert(chillingBlocks,Line18)
	for i=1,18 do
		isLineFull[i] = 0
	end
end
function love.update(dt)
	updateGame(dt)
end

function updateGame(dt)
	-- spawns the block set
	spawnBlocks()
	if pause == true then
		return
	end
	-- updates the block set
	updateSet(dt)
end

function love.draw()

	-- draws the block set
	-- movingBlocks[1]:draw()
	drawSet()
	for i,b in ipairs(movingBlocks) do
		b:draw()
	end

	for i,v in ipairs(nextBlocks) do
		v:draw()
	end

	for i,b in ipairs(chillingBlocks) do
		for j,k in ipairs(chillingBlocks[i]) do
			k:draw()
		end
	end
end

function loadResources()
	-- Load images
	imgBlock = love.graphics.newImage("assets/Pieces.png")
end

function love.keypressed(key,unicode, dt)
	if key == 'up' then
		rotate()
	elseif key == "left" then
		--apply change
		BlockSet.xCoor = BlockSet.xCoor - 1
		-- update with change in place
	   	for i,b in ipairs(movingBlocks) do
			b:update(dt)
		end
		-- check to see if its cool
		if collision() then
			-- do not want!
			BlockSet.xCoor = BlockSet.xCoor + 1
			-- apply change
			for i,b in ipairs(movingBlocks) do
				b:update(dt)
			end
			-- back to the way it was before
		end
	elseif key == "right" then
		BlockSet.xCoor = BlockSet.xCoor + 1
		for i,b in ipairs(movingBlocks) do
			b:update(dt)
		end
		if collision() then
			BlockSet.xCoor = BlockSet.xCoor - 1
			for i,b in ipairs(movingBlocks) do
				b:update(dt)
			end
		end
	elseif key == "down" then
		-- moves the block set down 1
		BlockSet.yPix = BlockSet.yPix + 20
		for i,b in ipairs(movingBlocks) do
			b:update(dt)
		end
		if collision() then
			BlockSet.yPix = BlockSet.yPix - 20
			for i,b in ipairs(movingBlocks) do
				b:update(dt)
			end
		end
	elseif key == " " then
		hanzoDanzoDonzo()
	elseif key == "c" then
		collision()
	elseif key == "r" then
		restart()
		pause = false
	end
end