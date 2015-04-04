function collision()
	for i,m in ipairs(movingBlocks) do
		if m.xCoor < 0 or m.xCoor > 9 or m.yCoor > 17 then
			print("true")
			return true
		end
		for j,c in ipairs(chillingBlocks) do
			for z,b in ipairs(chillingBlocks[j]) do
				-- print(i,v)
				if m.xCoor == b.xCoor and m.yCoor == b.yCoor then
					-- return true
					print("true")
					return true
				end
			end
		end
	end
end

function collisionFalling()
	for i,m in ipairs(movingBlocks) do
		if m.yCoor > 17 then
			print("true")
			return true
		end
		for j,c in ipairs(chillingBlocks) do
			for z,b in ipairs(chillingBlocks[j]) do
				-- print(i,v)
				if m.xCoor == b.xCoor and m.yCoor == b.yCoor then
					-- return true
					print("true")
					return true
				end
			end
		end
	end
end