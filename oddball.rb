### Coderbyte oddball challenge

def oddball_sum(numbers)
	sum = 0 
	odds = []
	x = 0 
	while x < numbers.length
		if numbers[x] % 2 != 0 
			odds.push(numbers[x])
		end
		x+=1
	end
	
	x = 0 
	while x < odds.length
		sum+= odds[x]
		x+=1
	end
			

	return sum

end

puts oddball_sum([1,2,3,4,5]) == 9
puts oddball_sum([0,6,4,4]) == 0 
puts oddball_sum([1,2,1]) == 2