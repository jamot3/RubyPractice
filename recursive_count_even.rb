def even_nums array
    counts_even array, []
end


def counts_even array, positions, count=0, index=0
    
    return "Count: #{count} ... Positions: [#{positions.join(", ")}]" if index == array.length
    
    if array[index] % 2 == 0
        count+=1
        positions<<index
    end
    
    index+=1
    counts_even array, positions, count, index


end

puts even_nums([1,3,5,6,8])