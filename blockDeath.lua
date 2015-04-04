function hanzoDanzoDonzo()
	for i,b in ipairs(movingBlocks) do
		b:death()
	end
	rdyForNewMovBlock = true
	for i,v in ipairs(isLineFull) do
		print(i,v)
		if v >= 10 then
			-- gets rid of the full line
			chillingBlocks[i] = {}
			-- sets the counter for the line back to 0
			isLineFull[i] = 0
		end
	end
end

function Block:death()
	x = self.xCoor
	y = self.yCoor
	Chillin.create(x,y)
end