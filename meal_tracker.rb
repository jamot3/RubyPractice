### A simple looping command line based utility that allows you to create a list of daily meals along with calorie counts and daily total caloric intake. 


class Food
  $food_list = Hash.new
  $calorie_count = 0 
  
  def initialize(name, calories)
    @name = name
    @calories = calories.to_i
    $food_list[@name.to_sym] = @calories 
    $calorie_count += @calories
  end
  
  
  def name
    return name
  end
  
  def calories
    return calories
  end
end

puts "Welcome to Nutri-tracker!"
puts "Press 'Enter' to begin..."
input = gets

while true 
  puts "--------------------------"
  puts "To enter a new meal into your daily meal log, type 'N'."
  puts "To delete a meal from the database, type 'D'."
  puts "To view your daily meal log, type 'V'."
  puts "To exit the program, type 'X'."
  puts "--------------------------"
  
  input = gets.chomp.upcase
  
  case input
    
  when 'N'
    puts ""
    name = ""
    while name.length < 1
      print "Type the name of the meal:  "
      name  = gets.chomp.capitalize
    end
    print "Type the caloric content of the meal:  "
    calories = gets.chomp.to_i
    puts "Added to your meal log: #{name} (#{calories} calories)."
    name = Food.new(name, calories)
    puts""
    puts""
    
    
  when 'D'
    puts ""
    print "Type the name of the meal you want to delete:"
    food = gets.chomp.capitalize.to_sym
    if $food_list[food].nil?
      puts "This food does not exist in your meal log."
    else
      puts "The meal '#{food} : #{$food_list[food]} calories' has been deleted from the database."
      $calorie_count -= $food_list[food]
      $food_list.delete(food)
    end
    
  when 'V'
    x = 0
    
    puts ""
    $food_list.each { |name, calories| x+=1
      puts "#{x}. #{name.to_s.capitalize} : " + "#{calories}".rjust(25 - name.length)}
    puts""
    puts "Total Calorie Count: #{$calorie_count}."
    puts ""
  
  when 'X'
    "Goodbye, my friend! Ci vediamo!"
    break
    
  end

    
end




