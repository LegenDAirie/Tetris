math.randomseed(os.time())
nextblock = math.random(1,7)

--Screen stuff
titleScreen = false
Play = true
pause = false

-- counters for the speed of the blocks
blockCounterAutoD = 0
blockCounterRL = 0
blockCounterD = 0

-- the block that is currently being contoled
activeBlock = {x = 200, y = 200, speed = 300, img = nil}
activeBlockTF = true

-- resting blocks
restingBlocks = {}

-- Collision detection taken function from http://love2d.org/wiki/BoundingBox.lua
-- Returns true if two boxes overlap, false if they don't
-- x1,y1 are the left-top coords of the first box, while w1,h1 are its width and height
-- x2,y2,w2 & h2 are the same, but for the second box
function CheckCollision(x1,y1,w1,h1, x2,y2,w2,h2)
  return x1 < x2+w2 and
         x2 < x1+w1 and
         y1 < y2+h2 and
         y2 < y1+h1
end

function love.keyreleased(key)
   if key == "p" then
      if pause == false then
			pause = true
		else
			pause = false
		end
   end
end


function love.update( dt )
	-- I always start with an easy way to exit the game
	if love.keyboard.isDown('escape') then
		love.event.push('quit')
	end

	if Play == true and pause == false then

		-- if activeBlockTF == true then
		-- 	if nextblock == 1 then
		-- 	table.insert(activeBlock, )

		-- sets the speed and snapping motion of the block automaticly falling down
		if blockCounterAutoD > 60 then
			blockCounterAutoD = 0
			if activeBlock.y < 510 then
				activeBlock.y = activeBlock.y + 30
			end
		else
			blockCounterAutoD = blockCounterAutoD + 100 * dt
		end
		-- sets the speed of the snapping for the down button, the main point was to use dt
		if blockCounterD > 1 then
			if love.keyboard.isDown("down", "s") then
				if activeBlock.y < 510 then
					activeBlock.y = activeBlock.y + 30
					blockCounterD = 0
				end
			end
		else 
			blockCounterD = blockCounterD + 100 * dt
		end
		-- will git rid of this one
		if love.keyboard.isDown("w", "up") then
			if activeBlock.y > 30 then
				activeBlock.y = activeBlock.y - 30
			end
		end
		-- sets the speed of the snapping for left and right, as well as the bottons to move left and right
		if blockCounterRL > 10 then
			if love.keyboard.isDown("left", "a") then
				if activeBlock.x > 100 then
					activeBlock.x = activeBlock.x - 30
					blockCounterRL = 0
				end
			end
			if love.keyboard.isDown("right", "d") then
				if activeBlock.x < 340 then
					activeBlock.x = activeBlock.x + 30
					blockCounterRL = 0
				end
			end
		else 
			blockCounterRL = blockCounterRL + 100 * dt
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
		love.graphics.setColor(255, 0, 0, 255)
		love.graphics.rectangle("fill", activeBlock.x, activeBlock.y, 60, 60)
		if pause == true then
			love.graphics.setColor(255, 5, 255, 255)
			love.graphics.rectangle("fill", 100, 30, 300, 540)
			love.graphics.setColor(0, 0, 0, 255)
			love.graphics.print("paused", 200, 227)
		end
	end
	love.graphics.print(nextblock)
end