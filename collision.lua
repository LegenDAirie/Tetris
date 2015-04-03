function collision()
	for i,m in ipairs(movingBlocks) do
		if m.xCoor < 0 or m.xCoor > 9 or m.yCoor > 17 then
			print("true")
			return true
		end
		for j,c in ipairs(chillingBlocks) do
			if m.xCoor == c.xCoor and m.yCoor == c.yCoor then
				-- return true
				print("true")
				return true
			end
		end
	end
end