function hanzoDanzoDonzo()
	for i,b in ipairs(movingBlocks) do
		b:death()
	end
	rdyForNewMovBlock = true
	emptyBlock()
end

function Block:death()
	x = self.xCoor
	y = self.yCoor
	Chillin.create(x,y)
end


------ not yet complete
-- will do for in a row but i think its messing up in the 
-- iteration in isLineFull, need to use some print statment 
-- to see what the values are and if it is correct
function emptyBlock()
	for i,v in ipairs(isLineFull) do
		print(i,v)
		if v >= 10 then
			-- gets rid of the full line
			chillingBlocks[i] = {}
			-- drops everything down
			for j=1,i - 1 do
				for e,c in ipairs(chillingBlocks[j]) do
					c:dropDown()
				end
				
			end

			-- sets the counter for the line back to 0
			isLineFull[i] = 0
			-- moves all of the counter values down to match the tables
			for p=i,1, -1 do
				print("p is the line that droped which is " .. p)
				isLineFull[p] = isLineFull[p - 1]
			end
			emptyBlock()
		end
	end
end
