### Command line program that returns a given number (n)  of fibonacci numbers. 

def fibonacci(n)
  fib_nums = [0 , 1]
  
  while fib_nums.length < n
    fib_nums.push(fib_nums[fib_nums.length - 1] + fib_nums[fib_nums.length - 2])
  end
  
  fib_nums
end

puts ""
puts ""
puts "Fibonacci Sequence Generator"
puts "----------------------------"
print "How many Fibonacci numbers would like to view? : "
n = gets.chomp.to_i

fib_array = fibonacci(n)

x = 0
fib_array.each { |num| x +=1
    puts "#{x}.  " + "#{num}".rjust(5 - x.to_s.length) }
    
puts ""
puts 'Thanks for using the Fibonacci Sequence Generator, goodbye!'
