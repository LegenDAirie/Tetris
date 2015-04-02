function rotate()
	-- changes which state the block is in
	state = state + 1
	if state >= 5 then
		state = 1
	end
end