require("movingBlock")
function love.load()
	restart()
	loadResources()
end

function restart()
	movingBlocks = {}
	rdyForNewMovBlock = true
end
function love.update(dt)
	updateGame(dt)
end

function updateGame(dt)
	spawnBlocks()
	movingBlocks[1]:update(dt)
end

function love.draw()
	movingBlocks[1]:draw()
end

function loadResources()
	-- Load images
	imgBlock = love.graphics.newImage("assets/Pieces.png")
end