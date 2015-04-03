require("movingBlock")
require("rotate")
require("blockCreate")
require("blockDeath")
require("chillinBlocks")

state = 1

function love.load()
	math.randomseed(os.time())
	restart()
	loadResources()
end

function restart()
	movingBlocks = {}
	chillingBlocks = {}
	thisBlock = 1
	rdyForNewMovBlock = true
end
function love.update(dt)
	updateGame(dt)
end

function updateGame(dt)
	-- spawns the block set
	spawnBlocks()
	-- updates the block set
	updateSet(dt)
	for i,b in ipairs(movingBlocks) do
		b:update(dt)
	end
end

function love.draw()

	-- draws the block set
	-- movingBlocks[1]:draw()
	drawSet()
	for i,b in ipairs(movingBlocks) do
		b:draw()
	end

	for i,b in ipairs(chillingBlocks) do
		b:draw()
	end
end

function loadResources()
	-- Load images
	imgBlock = love.graphics.newImage("assets/Pieces.png")
end

function love.keypressed(key,unicode, dt)
	if key == 'up' then
		print("invoking rotate()")
		rotate()
	elseif key == "left" then
		BlockSet.xCoor = BlockSet.xCoor - 1
	elseif key == "right" then
		BlockSet.xCoor = BlockSet.xCoor + 1
	elseif key == "down" then
		-- moves the block set down 1
		BlockSet.yPix = BlockSet.yPix + 20
	elseif key == " " then
		hanzoDanzoDonzo()
	end
end