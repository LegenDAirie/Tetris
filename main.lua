math.randomseed(os.time())
ThisBlock = math.random(1,7)
NextBlock = math.random(1,7)
GO = true
--Screen stuff
titleScreen = false
Play = true
pause = false
GameOver = false

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

StraightBlock1 = 1
sqblock = 1
Zblock = 1
BWZBlock = 1
LBlock = 1
BWLblock = 1
Tblock = 1

-- completed lines
line18 = 0 -- pixle 540
line17 = 0 -- pixle 510
line16 = 0 -- pixle 480

-- resting blocks
restingBlocks = {}

NextSet = {}

function love.keyreleased(key)
	if GameOver == false then
	   if key == "p" then
	      if pause == false then
				pause = true
			else
				pause = false
			end
	   end
	end
end

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

function Rotation( ... )
			-- saving the locations of the blocks before they change
			StraightBlock1Holder = StraightBlock1
			LBlockHolder = LBlock
			BWLblockHolder = BWLblock
			TblockHolder = Tblock
			BWZBlockHolder = BWZBlock
			ZblockHolder = Zblock

			oneX = activeBlock[1].x
			oneY = activeBlock[1].y
			threeX = activeBlock[3].x
			threeY = activeBlock[3].y
			fourX = activeBlock[4].x
			fourY = activeBlock[4].y
			twoX = activeBlock[2].x
			twoY = activeBlock[2].y
	if ThisBlock == 1 then -- rotation of the straight block
		if StraightBlock1 == 1 then
			StraightBlock1 = 2
			activeBlock[1].x = activeBlock[1].x + 30
			activeBlock[1].y = activeBlock[1].y + 30
			activeBlock[3].x = activeBlock[3].x - 30
			activeBlock[3].y = activeBlock[3].y - 30
			activeBlock[4].x = activeBlock[4].x - 60
			activeBlock[4].y = activeBlock[4].y - 60
		else
			StraightBlock1 = 1
			activeBlock[1].x = activeBlock[1].x - 30
			activeBlock[1].y = activeBlock[1].y - 30
			activeBlock[3].x = activeBlock[3].x + 30
			activeBlock[3].y = activeBlock[3].y + 30
			activeBlock[4].x = activeBlock[4].x + 60
			activeBlock[4].y = activeBlock[4].y + 60
		end

	elseif ThisBlock == 2 then -- rotation of the Lblock
		if LBlock == 1 then
			LBlock = 2
			-- activeBlock[1].x = activeBlock[1].x + 30
			activeBlock[1].y = activeBlock[1].y - 60
			activeBlock[2].x = activeBlock[2].x + 30
			activeBlock[2].y = activeBlock[2].y - 30
			activeBlock[4].x = activeBlock[4].x - 30
			activeBlock[4].y = activeBlock[4].y + 30
		elseif LBlock == 2 then
			LBlock = 3
			activeBlock[1].x = activeBlock[1].x + 60
			-- activeBlock[1].y = activeBlock[1].y + 60
			activeBlock[2].x = activeBlock[2].x + 30
			activeBlock[2].y = activeBlock[2].y + 30
			activeBlock[4].x = activeBlock[4].x - 30
			activeBlock[4].y = activeBlock[4].y - 30
		elseif LBlock == 3 then
			LBlock = 4
			-- activeBlock[1].x = activeBlock[1].x - 30
			activeBlock[1].y = activeBlock[1].y + 60
			activeBlock[2].x = activeBlock[2].x - 30
			activeBlock[2].y = activeBlock[2].y + 30
			activeBlock[4].x = activeBlock[4].x + 30
			activeBlock[4].y = activeBlock[4].y - 30
		elseif LBlock == 4 then
			LBlock = 1
			activeBlock[1].x = activeBlock[1].x - 60
			-- activeBlock[1].y = activeBlock[1].y - 30
			activeBlock[2].x = activeBlock[2].x - 30
			activeBlock[2].y = activeBlock[2].y - 30
			activeBlock[4].x = activeBlock[4].x + 30
			activeBlock[4].y = activeBlock[4].y + 30
		end
	elseif ThisBlock == 3 then -- rotation of the backwards L block
		if BWLblock == 1 then
			BWLblock = 2
			activeBlock[1].x = activeBlock[1].x + 30
			activeBlock[1].y = activeBlock[1].y - 30
			activeBlock[3].x = activeBlock[3].x - 30
			activeBlock[3].y = activeBlock[3].y + 30
			activeBlock[4].x = activeBlock[4].x - 60
			-- activeBlock[4].y = activeBlock[4].y - 30
		elseif BWLblock == 2 then
			BWLblock = 3
			activeBlock[1].x = activeBlock[1].x + 30
			activeBlock[1].y = activeBlock[1].y + 30
			activeBlock[3].x = activeBlock[3].x - 30
			activeBlock[3].y = activeBlock[3].y - 30
			-- activeBlock[4].x = activeBlock[4].x - 30
			activeBlock[4].y = activeBlock[4].y - 60
		elseif BWLblock == 3 then
			BWLblock = 4
			activeBlock[1].x = activeBlock[1].x - 30
			activeBlock[1].y = activeBlock[1].y + 30
			activeBlock[3].x = activeBlock[3].x + 30
			activeBlock[3].y = activeBlock[3].y - 30
			activeBlock[4].x = activeBlock[4].x + 60
			-- activeBlock[4].y = activeBlock[4].y - 30
		elseif BWLblock == 4 then
			BWLblock = 1
			activeBlock[1].x = activeBlock[1].x - 30
			activeBlock[1].y = activeBlock[1].y - 30
			activeBlock[3].x = activeBlock[3].x + 30
			activeBlock[3].y = activeBlock[3].y + 30
			-- activeBlock[4].x = activeBlock[4].x - 30
			activeBlock[4].y = activeBlock[4].y + 60
		end
	elseif ThisBlock == 4 then -- rotation of the T block
		if Tblock == 1 then
			Tblock = 2
			activeBlock[1].x = activeBlock[1].x  + 30
			activeBlock[1].y = activeBlock[1].y  - 30
			activeBlock[3].x = activeBlock[3].x  - 30
			activeBlock[3].y = activeBlock[3].y  - 30
			activeBlock[4].x = activeBlock[4].x  - 30
			activeBlock[4].y = activeBlock[4].y  + 30
		elseif Tblock == 2 then
			Tblock = 3
			activeBlock[1].x = activeBlock[1].x  + 30
			activeBlock[1].y = activeBlock[1].y  + 30
			activeBlock[3].x = activeBlock[3].x  + 30
			activeBlock[3].y = activeBlock[3].y  - 30
			activeBlock[4].x = activeBlock[4].x  - 30
			activeBlock[4].y = activeBlock[4].y  - 30
		elseif Tblock == 3 then
			Tblock = 4
			activeBlock[1].x = activeBlock[1].x  - 30
			activeBlock[1].y = activeBlock[1].y  + 30
			activeBlock[3].x = activeBlock[3].x  + 30
			activeBlock[3].y = activeBlock[3].y  + 30
			activeBlock[4].x = activeBlock[4].x  + 30
			activeBlock[4].y = activeBlock[4].y  - 30
		elseif Tblock == 4 then
			Tblock = 1
			activeBlock[1].x = activeBlock[1].x  - 30
			activeBlock[1].y = activeBlock[1].y  - 30
			activeBlock[3].x = activeBlock[3].x  - 30
			activeBlock[3].y = activeBlock[3].y  + 30
			activeBlock[4].x = activeBlock[4].x  + 30
			activeBlock[4].y = activeBlock[4].y  + 30
		end
	elseif ThisBlock == 5 then -- sound for the square block "rotation"
	elseif ThisBlock == 6 then -- rotation for the Z block
		if Zblock == 1 then
			Zblock = 2
			activeBlock[1].x = activeBlock[1].x + 60
			activeBlock[4].y = activeBlock[4].y - 60
		elseif Zblock == 2 then
			Zblock = 1
			activeBlock[1].x = activeBlock[1].x - 60
			activeBlock[4].y = activeBlock[4].y + 60
		end
	elseif ThisBlock == 7 then -- rotation for the backwards z block
		if BWZBlock == 1 then
			BWZBlock = 2
			activeBlock[1].x = activeBlock[1].x + 60
			activeBlock[2].y = activeBlock[2].y - 60
		elseif BWZBlock == 2 then
			BWZBlock = 1
			activeBlock[1].x = activeBlock[1].x - 60
			activeBlock[2].y = activeBlock[2].y + 60
		end
	end
		-- for collision between active blocks and resting blocks
		-- if there is a collision then this puts the block back to the positino it was at before it rotated
	for i,aBlocks in ipairs(activeBlock) do
		for j,rBlocks in ipairs(restingBlocks) do
			if CheckCollision(aBlocks.x, aBlocks.y, aBlocks.img:getWidth(), aBlocks.img:getWidth(), rBlocks.x, rBlocks.y, rBlocks.img:getWidth(), rBlocks.img:getWidth()) then
				activeBlock[1].x = oneX
				activeBlock[1].y = oneY
				activeBlock[3].x = threeX
				activeBlock[3].y = threeY
				activeBlock[4].x = fourX
				activeBlock[4].y = fourY
				activeBlock[2].x = twoX
				activeBlock[2].y = twoY

				StraightBlock1 = StraightBlock1Holder
				LBlock = LBlockHolder
				BWLblock = BWLblockHolder
				Tblock = TblockHolder
				BWZBlock = BWZBlockHolder
				Zblock = ZblockHolder
			end
		end
	end
	-- after the block is rotated, checks if any are outisde of the play area and if so it puts it back to where it was
	for i,v in ipairs(activeBlock) do
		if v.x < 100 or v.x > 370 or v.y > 540 then
			activeBlock[1].x = oneX
			activeBlock[1].y = oneY
			activeBlock[3].x = threeX
			activeBlock[3].y = threeY
			activeBlock[4].x = fourX
			activeBlock[4].y = fourY
			activeBlock[2].x = twoX
			activeBlock[2].y = twoY

			StraightBlock1 = StraightBlock1Holder
			LBlock = LBlockHolder
			BWLblock = BWLblockHolder
			Tblock = TblockHolder
			BWZBlock = BWZBlockHolder
			Zblock = ZblockHolder
		end
	end
end

function checkLINE(v)
	table.insert(restingBlocks,v)
end

function love.load()
	StraightBlockImg = love.graphics.newImage('assets/orange.png')
	lBlockImg = love.graphics.newImage('assets/blue.png')
	BWlBlockImg = love.graphics.newImage('assets/green.png')
	tBlockImg = love.graphics.newImage('assets/pink.png')
	zBlockImg = love.graphics.newImage('assets/purple.png')
	BWzBlockImg = love.graphics.newImage('assets/red.png')
	cubeBlockImg = love.graphics.newImage('assets/yellow.png')
end

function love.update( dt )
	if love.keyboard.isDown('escape') then
		love.event.push('quit')
	end
	

	if love.keyboard.isDown(' ') then
		if GameOver == true then
			GameOver = false
			restingBlocks = {}
			activeBlock = {}
			NextSet = {}
			ThisBlock = NextBlock
			line18 = 0
			line17 = 0
			line16 = 0
			-- NextBlock = math.random(1,7)
			GO = true
			StraightBlock1 = 1
			sqblock = 1
			Zblock = 1
			BWZBlock = 1
			LBlock = 1
			BWLblock = 1
			Tblock = 1
		end
	end

	if Play == true and pause == false and GameOver == false then
		-- sets the speed and snapping motion of the block automaticly falling down
		if blockCounterAutoD > 60 then
			blockCounterAutoD = 0
			for i,blocks in ipairs(activeBlock) do
				blocks.y = blocks.y + 30
					-- for collision between actie blocks and resting blocks
				for i,aBlocks in ipairs(activeBlock) do
					for j,rBlocks in ipairs(restingBlocks) do
						if CheckCollision(aBlocks.x, aBlocks.y, aBlocks.img:getWidth(), aBlocks.img:getWidth(), rBlocks.x, rBlocks.y, rBlocks.img:getWidth(), rBlocks.img:getWidth()) then
							for i,v in ipairs(activeBlock) do
								v.y = v.y - 30
								-- table.insert(restingBlocks, v)
								checkLINE(v) -- puts the thing in the restingblocks table and keeps track of what line its in
							end
							activeBlock = {}
							NextSet = {}
							-- ThisBlock = 1
							
							GO = true
							StraightBlock1 = 1
							sqblock = 1
							Zblock = 1
							BWZBlock = 1
							LBlock = 1
							BWLblock = 1
							Tblock = 1

						end
					end
				end

				if blocks.y >= 570 then
					for i,v in ipairs(activeBlock) do
						v.y = v.y - 30
						-- table.insert(restingBlocks, v)
						checkLINE(v) -- puts the thing in the restingblocks table and keeps track of what line its in
						activeBlock = {}
						NextSet = {}
					end
					-- ThisBlock = 1
					

					GO = true
					StraightBlock1 = 1
					sqblock = 1
					Zblock = 1
					BWZBlock = 1
					LBlock = 1
					BWLblock = 1
					Tblock = 1
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
					v.y = v.y + 30
						-- for collision between actie blocks and resting blocks
					for i,aBlocks in ipairs(activeBlock) do
						for j,rBlocks in ipairs(restingBlocks) do
							if CheckCollision(aBlocks.x, aBlocks.y, aBlocks.img:getWidth(), aBlocks.img:getWidth(), rBlocks.x, rBlocks.y, rBlocks.img:getWidth(), rBlocks.img:getWidth()) then
								for i,v in ipairs(activeBlock) do
									v.y = v.y - 30
									-- table.insert(restingBlocks, v)
									checkLINE(v) -- puts the thing in the restingblocks table and keeps track of what line its in
								end
								activeBlock = {}
								NextSet = {}
								GO = true
								StraightBlock1 = 1
								sqblock = 1
								Zblock = 1
								BWZBlock = 1
								LBlock = 1
								BWLblock = 1
								Tblock = 1
							end
						end
					end

					if v.y >= 570 then
						for i,v in ipairs(activeBlock) do
							v.y = v.y - 30
							-- table.insert(restingBlocks, v)
							checkLINE(v) -- puts the thing in the restingblocks table and keeps track of what line its in
							activeBlock = {}
							NextSet = {}
							-- ThisBlock = 1
							GO = true
							StraightBlock1 = 1
							sqblock = 1
							Zblock = 1
							BWZBlock = 1
							LBlock = 1
							BWLblock = 1
							Tblock = 1

						end
					end
				end
			end
		else 
			blockCounterD = blockCounterD + (100 * dt)
		end
		
		-- sets the speed of the snapping for left and right, as well as the bottons to move left and right
		if blockCounterRL > 10 then
			if love.keyboard.isDown("left", "a") then
				blockCounterRL = 0
				for i,v in ipairs(activeBlock) do -- move them ALL to the left
					v.x = v.x - 30

						-- for collision between actie blocks and resting blocks
					for i,aBlocks in ipairs(activeBlock) do
						for j,rBlocks in ipairs(restingBlocks) do
							if CheckCollision(aBlocks.x, aBlocks.y, aBlocks.img:getWidth(), aBlocks.img:getWidth(), rBlocks.x, rBlocks.y, rBlocks.img:getWidth(), rBlocks.img:getWidth()) then
								for i,v in ipairs(activeBlock) do
									v.x = v.x + 30
								end
							end
						end
					end

					if v.x < 100 then -- dont go out of the play area
						for i,v in ipairs(activeBlock) do -- if just one of them goes out side it puts them all back
							v.x = v.x + 30
						end
					end
				end
			end
			if love.keyboard.isDown("right", "d") then
				blockCounterRL = 0
				for i,v in ipairs(activeBlock) do -- move them all to the right
					v.x = v.x + 30

						-- for collision between actie blocks and resting blocks
					for i,aBlocks in ipairs(activeBlock) do
						for j,rBlocks in ipairs(restingBlocks) do
							if CheckCollision(aBlocks.x, aBlocks.y, aBlocks.img:getWidth(), aBlocks.img:getWidth(), rBlocks.x, rBlocks.y, rBlocks.img:getWidth(), rBlocks.img:getWidth()) then
								for i,v in ipairs(activeBlock) do
									v.x = v.x - 30
								end
							end
						end
					end


					if v.x > 370 then -- dont leave me!
						for i,v in ipairs(activeBlock) do -- if just one goes outside with out asking, them all get punished...
							v.x = v.x - 30
						end
					end
				end
			end
		else 
			blockCounterRL = blockCounterRL + 100 * dt
		end

		if GO == true then
			ThisBlock = NextBlock
			NextBlock = math.random(1,7)
			if ThisBlock == 1 then -- straight block
				block1 = {x = 190, y = 30, img = StraightBlockImg}
				table.insert(activeBlock, block1)
				block1 = {x = 220, y = 30, img = StraightBlockImg}
				table.insert(activeBlock, block1)
				block1 = {x = 250, y = 30, img = StraightBlockImg}
				table.insert(activeBlock, block1)
				block1 = {x = 280, y = 30, img = StraightBlockImg}
				table.insert(activeBlock, block1)

				GO = false

			elseif ThisBlock == 2 then -- L block

				block1 = {x = 190, y = 60, img = lBlockImg}
				table.insert(activeBlock, block1)
				block1 = {x = 190, y = 30, img = lBlockImg}
				table.insert(activeBlock, block1)
				block1 = {x = 220, y = 30, img = lBlockImg}
				table.insert(activeBlock, block1)
				block1 = {x = 250, y = 30, img = lBlockImg}
				table.insert(activeBlock, block1)

				GO = false

			elseif ThisBlock == 3 then -- backwards L block

				block1 = {x = 190, y = 30, img = BWlBlockImg}
				table.insert(activeBlock, block1)
				block1 = {x = 220, y = 30, img = BWlBlockImg}
				table.insert(activeBlock, block1)
				block1 = {x = 250, y = 30, img = BWlBlockImg}
				table.insert(activeBlock, block1)
				block1 = {x = 250, y = 60, img = BWlBlockImg}
				table.insert(activeBlock, block1)

				GO = false
			elseif ThisBlock == 4 then -- T block

				block1 = {x = 190, y = 30, img = tBlockImg}
				table.insert(activeBlock, block1)
				block1 = {x = 220, y = 30, img = tBlockImg}
				table.insert(activeBlock, block1)
				block1 = {x = 220, y = 60, img = tBlockImg}
				table.insert(activeBlock, block1)
				block1 = {x = 250, y = 30, img = tBlockImg}
				table.insert(activeBlock, block1)

				GO = false
			elseif ThisBlock == 5 then -- square block

				block1 = {x = 220, y = 30, img = cubeBlockImg}
				table.insert(activeBlock, block1)
				block1 = {x = 220, y = 60, img = cubeBlockImg}
				table.insert(activeBlock, block1)
				block1 = {x = 250, y = 30, img = cubeBlockImg}
				table.insert(activeBlock, block1)
				block1 = {x = 250, y = 60, img = cubeBlockImg}
				table.insert(activeBlock, block1)

				GO = false
			elseif ThisBlock == 6 then -- z block

				block1 = {x = 190, y = 30, img = zBlockImg}
				table.insert(activeBlock, block1)
				block1 = {x = 220, y = 30, img = zBlockImg}
				table.insert(activeBlock, block1)
				block1 = {x = 220, y = 60, img = zBlockImg}
				table.insert(activeBlock, block1)
				block1 = {x = 250, y = 60, img = zBlockImg}
				table.insert(activeBlock, block1)

				GO = false
			elseif ThisBlock == 7 then

				block1 = {x = 190, y = 60, img = BWzBlockImg}
				table.insert(activeBlock, block1)
				block1 = {x = 220, y = 60, img = BWzBlockImg}
				table.insert(activeBlock, block1)
				block1 = {x = 220, y = 30, img = BWzBlockImg}
				table.insert(activeBlock, block1)
				block1 = {x = 250, y = 30, img = BWzBlockImg}
				table.insert(activeBlock, block1)

				GO = false
			end

			if NextBlock == 1 then -- straight block
				block1 = {x = 190, y = 30, img = StraightBlockImg}
				table.insert(NextSet, block1)
				block1 = {x = 220, y = 30, img = StraightBlockImg}
				table.insert(NextSet, block1)
				block1 = {x = 250, y = 30, img = StraightBlockImg}
				table.insert(NextSet, block1)
				block1 = {x = 280, y = 30, img = StraightBlockImg}
				table.insert(NextSet, block1)

				GO = false

			elseif NextBlock == 2 then -- L block

				block1 = {x = 190, y = 60, img = lBlockImg}
				table.insert(NextSet, block1)
				block1 = {x = 190, y = 30, img = lBlockImg}
				table.insert(NextSet, block1)
				block1 = {x = 220, y = 30, img = lBlockImg}
				table.insert(NextSet, block1)
				block1 = {x = 250, y = 30, img = lBlockImg}
				table.insert(NextSet, block1)

				GO = false

			elseif NextBlock == 3 then -- backwards L block

				block1 = {x = 190, y = 30, img = BWlBlockImg}
				table.insert(NextSet, block1)
				block1 = {x = 220, y = 30, img = BWlBlockImg}
				table.insert(NextSet, block1)
				block1 = {x = 250, y = 30, img = BWlBlockImg}
				table.insert(NextSet, block1)
				block1 = {x = 250, y = 60, img = BWlBlockImg}
				table.insert(NextSet, block1)

				GO = false
			elseif NextBlock == 4 then -- T block

				block1 = {x = 190, y = 30, img = tBlockImg}
				table.insert(NextSet, block1)
				block1 = {x = 220, y = 30, img = tBlockImg}
				table.insert(NextSet, block1)
				block1 = {x = 220, y = 60, img = tBlockImg}
				table.insert(NextSet, block1)
				block1 = {x = 250, y = 30, img = tBlockImg}
				table.insert(NextSet, block1)

				GO = false
			elseif NextBlock == 5 then -- square block

				block1 = {x = 220, y = 30, img = cubeBlockImg}
				table.insert(NextSet, block1)
				block1 = {x = 220, y = 60, img = cubeBlockImg}
				table.insert(NextSet, block1)
				block1 = {x = 250, y = 30, img = cubeBlockImg}
				table.insert(NextSet, block1)
				block1 = {x = 250, y = 60, img = cubeBlockImg}
				table.insert(NextSet, block1)

				GO = false
			elseif NextBlock == 6 then -- z block

				block1 = {x = 190, y = 30, img = zBlockImg}
				table.insert(NextSet, block1)
				block1 = {x = 220, y = 30, img = zBlockImg}
				table.insert(NextSet, block1)
				block1 = {x = 220, y = 60, img = zBlockImg}
				table.insert(NextSet, block1)
				block1 = {x = 250, y = 60, img = zBlockImg}
				table.insert(NextSet, block1)

				GO = false
			elseif NextBlock == 7 then

				block1 = {x = 190, y = 60, img = BWzBlockImg}
				table.insert(NextSet, block1)
				block1 = {x = 220, y = 60, img = BWzBlockImg}
				table.insert(NextSet, block1)
				block1 = {x = 220, y = 30, img = BWzBlockImg}
				table.insert(NextSet, block1)
				block1 = {x = 250, y = 30, img = BWzBlockImg}
				table.insert(NextSet, block1)

				GO = false
			end


			-- for collision for game over
			for i,aBlocks in ipairs(activeBlock) do
				for j,rBlocks in ipairs(restingBlocks) do
					if CheckCollision(aBlocks.x, aBlocks.y, aBlocks.img:getWidth(), aBlocks.img:getWidth(), rBlocks.x, rBlocks.y, rBlocks.img:getWidth(), rBlocks.img:getWidth()) then
						for i,v in ipairs(activeBlock) do
							GameOver = true
							GO = false
						end
					end
				end
			end
		end

		

		if blockCounterRotate > 10 then
			if love.keyboard.isDown("w", "up") then
				blockCounterRotate = 0
				Rotation()				
			end
		else
			blockCounterRotate = blockCounterRotate + (100 * dt)
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
			if blocks.y >= 30 then
				-- love.graphics.setColor(200, 230, 21, 255)
				-- love.graphics.rectangle("fill", blocks.x, blocks.y, 30, 30)
				love.graphics.draw(blocks.img, blocks.x, blocks.y)
			end
			

			-- love.graphics.print("block1 x: " .. blocks.x .. "block1 y: " .. blocks.y)
		end

		for i,v in ipairs(NextSet) do
			love.graphics.draw(v.img, v.x + 300, v.y + 100)
		end
		-- love.graphics.setColor(255, 0, 0, 255)
		-- love.graphics.rectangle("fill", activeBlock.x, activeBlock.y, 60, 60)
		for i,v in ipairs(restingBlocks) do
			if v.y >= 30 then
				love.graphics.setColor(200, 150, 75, 255)
				love.graphics.rectangle("fill", v.x, v.y, 30, 30)
			end

			-- print("x; " .. v.x .. "y; " .. v.y)
		end

		if GameOver == true then
			love.graphics.setColor(0, 0, 0, 255)
			love.graphics.print("Game Over breh!", 200, 227)
			love.graphics.print("press space to try again", 200, 235)
		end

		if pause == true then
			love.graphics.setColor(255, 5, 255, 255)
			love.graphics.rectangle("fill", 100, 30, 300, 540)
			love.graphics.setColor(0, 0, 0, 255)
			love.graphics.print("paused", 200, 227)
		end
	end
	love.graphics.print(line18)
end