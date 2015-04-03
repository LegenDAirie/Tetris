function hanzoDanzoDonzo()
	for i,b in ipairs(movingBlocks) do
		b:death()
	end
	rdyForNewMovBlock = true
end

function Block:death()
	x = self.xCoor
	y = self.yCoor
	Chillin.create(x,y)
end
