require("movingBlock")
require("rotate")
function love.load()
	math.randomseed(os.time())
	restart()
	loadResources()
end

function restart()
	movingBlocks = {}
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
	-- movingBlocks[1]:update(dt)
end

function love.draw()

	-- draws the block set
	-- movingBlocks[1]:draw()
	drawSet()
	for i,b in ipairs(movingBlocks) do
		b:draw()
	end
end

function loadResources()
	-- Load images
	imgBlock = love.graphics.newImage("assets/Pieces.png")
end

function love.keypressed(key,unicode)
	if key == 'up' then
		-- rotate()
	end
end