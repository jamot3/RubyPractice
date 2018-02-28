### Determines the largest number within each nested array. 

def largest_nested arr
  greatest = []
  
  x = 0
  while x < arr.length
    y = 0 
    while y < arr[x].length
      greatest_num = nil
      if greatest_num == nil || arr[x][y] > greatest
        greatest_num = arr[x][y]
      end
      y += 1
    end
    greatest.push(greatest_num)
    x += 1
  end
  
  return greatest
  
end

arr = [[1,3,4], [1,4,9], [7, 9, 11], [1, 2, 3]]

puts largest_nested arr