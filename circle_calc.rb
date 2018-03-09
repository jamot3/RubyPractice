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
    