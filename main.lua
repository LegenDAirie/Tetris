require("MovingBlock")
blocks = {}
gameState = 0
once = true

function love.load()
	loadResources()
end

function love.update(dt)
	if gameState == 0 then
		updateGame(dt)
	elseif gameState == 1 then
		updateMenu(dt)
	end
end

function updateGame(dt)
	spawnBlock(dt)
	for i,v in ipairs(blocks) do

		v:update(dt)
		if v.alive == false then
			table.remove(blocks,i)
		end
	end

end

function love.draw()
	for i,v in ipairs(blocks) do
		v:draw()
	end
	-- Block:draw()
end

function loadResources ()
	-- Load images
	imgSprites = love.graphics.newImage("assets/Pieces.png")
end