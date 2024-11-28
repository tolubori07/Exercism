return function(n)
	local count = 0
  if n <= 0 then error("Only positive numbers are allowed") end
	while n ~= 1 do
		if n % 2 == 0 then
			n = n / 2
		else
			n = (n * 3) + 1
		end
		count = count + 1
	end
	return count
end
