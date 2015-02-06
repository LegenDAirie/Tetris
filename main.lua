math.randomseed(os.time())
-- nextblock = math.random(1,7)
nextblock = 1
--Screen stuff
titleScreen = false
Play = true
pause = false

-- counters for the speed of the blocks
blockCounterAutoD = 0
blockCounterRL = 0
blockCounterD = 0
blockCounterRotate = 0

-- the block that is currently being contoled
activeBlock = {}
block1 = {}
-- block2 = {}
-- block3 = {}
-- block4 = {}
activeBlockTF = true
StraightBlock1 = true

-- resting blocks
restingBlocks = {}

function love.keyreleased(key)
   if key == "p" then
      if pause == false then
			pause = true
		else
			pause = false
		end
   end
end

function love.load()
	StraightBlockImg = love.graphics.newImage('assets/orange.png')
end

function love.update( dt )
	-- I always start with an easy way to exit the game
	if love.keyboard.isDown('escape') then
		love.event.push('quit')
	end

	if Play == true and pause == false then
		-- sets the speed and snapping motion of the block automaticly falling down
		if blockCounterAutoD > 60 then
			blockCounterAutoD = 0
			for i,blocks in ipairs(activeBlock) do
				if blocks.y < 540 then
				blocks.y = blocks.y + 30
				end
			end
		else
			blockCounterAutoD = blockCounterAutoD + (100 * dt)
		end
		-- sets the speed of the snapping for the down button, the main point was to use dt
		if blockCounterD > 1 then
			if love.keyboard.isDown("down", "s") then
				blockCounterD = 0
				for i,v in ipairs(activeBlock) do
					if v.y < 540 then
						v.y = v.y + 30
					end
				end
			end
		else 
			blockCounterD = blockCounterD + (100 * dt)
		end
		if blockCounterRotate > 10 then
			if love.keyboard.isDown("w", "up") then
				blockCounterRotate = 0
				if StraightBlock1 == true then
					StraightBlock1 = false
					activeBlock[1].x = activeBlock[1].x + 30
					activeBlock[1].y = activeBlock[1].y + 30
					activeBlock[3].x = activeBlock[3].x - 30
					activeBlock[3].y = activeBlock[3].y - 30
					activeBlock[4].x = activeBlock[4].x - 60
					activeBlock[4].y = activeBlock[4].y - 60
					-- for i,v in ipairs(activeBlock) do
					-- 	if v.y > 30 then
					-- 		v.y = v.y - 30
					-- 	end
					-- end
				else
					StraightBlock1 = true
					activeBlock[1].x = activeBlock[1].x - 30
					activeBlock[1].y = activeBlock[1].y - 30
					activeBlock[3].x = activeBlock[3].x + 30
					activeBlock[3].y = activeBlock[3].y + 30
					activeBlock[4].x = activeBlock[4].x + 60
					activeBlock[4].y = activeBlock[4].y + 60
				end
			end
		else
			blockCounterRotate = blockCounterRotate + (100 * dt)
		end
		-- sets the speed of the snapping for left and right, as well as the bottons to move left and right
		if blockCounterRL > 10 then
			if love.keyboard.isDown("left", "a") then
				blockCounterRL = 0
				for i,v in ipairs(activeBlock) do
					if v.x > 100 then
						v.x = v.x - 30
					end
				end
			end
			if love.keyboard.isDown("right", "d") then
				blockCounterRL = 0
				for i,v in ipairs(activeBlock) do
					if v.x < 370 then
						v.x = v.x + 30
					end
				end
			end
		else 
			blockCounterRL = blockCounterRL + 100 * dt
		end

		if nextblock == 1 then 
			block1 = {x = 190, y = 30, img = StraightBlockImg}
			table.insert(activeBlock, block1)
			block1 = {x = 220, y = 30, img = StraightBlockImg}
			table.insert(activeBlock, block1)
			block1 = {x = 250, y = 30, img = StraightBlockImg}
			table.insert(activeBlock, block1)
			block1 = {x = 280, y = 30, img = StraightBlockImg}
			table.insert(activeBlock, block1)

			while nextblock == 1 do
				nextblock = math.random(1,7)
			end
		end
	end
end

function love.draw( dt )
		-- the title screen
	if titleScreen == true then
	end
		-- the play screen
	if Play == true then
		-- game area
		love.graphics.setColor(255, 255, 255, 255)
		love.graphics.rectangle("fill", 100, 30, 300, 540)
		-- active block
		for i,blocks in ipairs(activeBlock) do
			love.graphics.draw(blocks.img, blocks.x, blocks.y)
			-- love.graphics.print("block1 x: " .. blocks.x .. "block1 y: " .. blocks.y)
		end
		-- love.graphics.setColor(255, 0, 0, 255)
		-- love.graphics.rectangle("fill", activeBlock.x, activeBlock.y, 60, 60)
		for i,v in ipairs(activeBlock) do
			print("x; " .. v.x .. "y; " .. v.y)
		end

		if pause == true then
			love.graphics.setColor(255, 5, 255, 255)
			love.graphics.rectangle("fill", 100, 30, 300, 540)
			love.graphics.setColor(0, 0, 0, 255)
			love.graphics.print("paused", 200, 227)
		end
	end
	love.graphics.print(nextblock)
end