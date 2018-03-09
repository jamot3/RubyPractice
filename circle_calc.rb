### Alternate code for the body of the program featured at bottom - more compact and less repetitive code-wise, but not
### as nice for the user or as visually appealing. 

module Circle
    include Math
    
    def Circle.diameter(radius)
        radius*2
    end
    
    def Circle.circumference(radius)
        2*PI*radius
    end
    
    def Circle.area(radius)
        PI * radius**2
    end
    
end


puts "ooooooooooooooooooooooo"
puts "~~~~~~~~~~~~~~~~~~~~~~~"
puts "~~~~~~~~CIRCLE~~~~~~~~~"
puts "~~~~~~~PARADISE~~~~~~~~"
puts "~~~~~~~~~~~~~~~~~~~~~~~"
puts "ooooooooooooooooooooooo"
puts ""
puts "Press ENTER to enter..."
input = gets
puts ""

"Travelling to circle paradise...".each_char {|character| print character ; $stdout.flush; sleep 0.05}

puts ""
puts ""
puts ""
puts "You have arrived!"
puts ""
puts "" 
puts "To make the most of your trip to Circle Paradise, please have the"
puts "radius of your favorite circle handy... "
puts "" 
puts ""

while true
    

    puts "What would you like to calculate?"
    puts "- To calculate diameter, type 'D' ..."
    puts "- To calculate circumference, type 'C' ..."
    puts "- To calculate area, type 'A' ..."
    puts "- To exit the program, type 'X' ... "
    puts "" 
    choice = gets.chomp.upcase
    
    case choice
        
    when 'D'
        print "Please enter the radius of your circle: "
        radius = gets.chomp.to_i
        puts ""
        puts "The diameter of your circle is #{Circle.diameter(radius)}."
        puts ""
        puts ""
        
    when 'C'
        print "Please enter the radius of your circle: " 
        radius = gets.chomp.to_i
        puts ""
        puts "The circumference of your circle is #{Circle.circumference(radius)}."
        puts ""
        puts ""
        
    when 'A'
        print "Please enter the radius of your circle: "
        radius = gets.chomp.to_i
        puts ""
        puts "The area of your circle is #{Circle.area(radius)}."
        puts "" 
        puts ""
        
    when 'X'
        puts "Goodbye!"
        break
        
    end
    
end

#while true
#    puts "Please enter the radius if your Circle:"
#    radius = gets.chomp.to_i
#    puts ""
#    puts ""
#
#   puts "What would you like to calculate?"
#   puts "- To calculate diameter, type 'D' ..."
#   puts "- To calculate circumference, type 'C' ..."
#   puts "- To calculate area, type 'A' ..."
#   puts "- To exit the program, type 'X' ... "
#   puts "" 
#   choice = gets.chomp.upcase
#   
#   if choice == 'D'
#       operation = 'diameter'
#       answer = Circle.diameter(radius)
#   elsif choice == 'C'
#       operation = 'circumference'
#       answer = Circle.circumference(radius)
#   elsif choice == 'A'
#       operation = 'area'
#       answer = Circle.circumference(radius)
#   elsif choice == 'X'
#       break
#   end
#   
#   puts "The #{operation} of your circle is #{answer}."
#   puts ""
#   puts ""
#   
#end
    
