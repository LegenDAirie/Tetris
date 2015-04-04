function rotate()
	-- changes which state the block is in
	state = state + 1
	if state >= 5 then
		state = 1
	end
	for i,b in ipairs(movingBlocks) do
		b:update(dt)
	end
	if collision() then
		state = state - 1
		if state <= 0 then
			state = 4
		end
		for i,b in ipairs(movingBlocks) do
			b:update(dt)
		end
	end
end