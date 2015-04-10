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
	for i=18,1, -1 do
		yup(i)
	end
end

function yup(i)
	tableLen = 0
	for j,v in ipairs(chillingBlocks[i]) do
		tableLen = tableLen + 1
	end
	print(tableLen)
	if tableLen >= 10 then

		-- print(i)
		anotherFunction(i)
		yup(i)
		-- print(i)
	end
end

function anotherFunction(i)
	if i == 1 then
		chillingBlocks[1] = {}
	else
		chillingBlocks[i] = {}
		for a,b in ipairs(chillingBlocks[i-1]) do
			b:dropDown()
			b:death()
		end
		return anotherFunction(i-1)
	end
end
