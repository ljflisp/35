N = 8

-- check whether position (n,c) is free from attacks
function isplaceok(a, n, c)
	for i=1, n-1 do
		if (a[i] == c) or
			(a[i] - i == c - n) or
			(a[i] + i == c + n) then
			return false
		end
	end
	return true
end

function printsolution(a)
	for i=1, N do
    local line = ""
		for j=1, N do
			line = line .. (a[i]==j and "Q" or "-") .. " "
		end
		print(line)
	end
	print("\n")
end

function addqueen(a, n)
	if n > N then
		printsolution(a)
	else
		for c=1, N do
			if isplaceok(a, n, c) then
				a[n] = c
				addqueen(a, n+1)
			end
		end
	end
end

--addqueen({}, 1)
dofile("1.doc")