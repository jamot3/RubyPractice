to_do = Hash.new 

while true 
  puts ""
  puts ""
  puts ""
  puts "To-do list"
  puts ""
  puts "=> To add a task to the list, type 'A'."
  puts "=> To view your to-do list type 'V'."
  puts "=> To view only incomplete tasks, type 'I'"
  puts "=> To mark an item complete, type 'C'."
  puts "=> To delete an item on the list, type 'D'."
  puts "=> To exit the program, type 'X'."
  puts ""
  
  input = gets.chomp.upcase
  puts ""
  case input 
    
  when 'A'
    puts "Please enter the task you would like to add to the list:"
    task = gets.chomp.capitalize
    to_do[task.to_sym] = "Incomplete"
    puts ""
    puts "#{task} has been added to your to-do list."
  
  when 'V'
    puts "Here is your to-do list:"
    puts ""
    to_do.each { |task, status| puts "#{task} : #{status}"}
    
  when 'I'
    puts "Here are your incomplete tasks:"
    puts ""
    to_do.each { |task, status| puts status == "Incomplete" ? "#{task}: #{status}" : nil}

    
  when 'C'
    puts "Here is your to-do list... please type the name of the task you would like to mark complete:"
    to_do.each { |task, status| puts "#{task} : #{status}"}
    puts ""
    task_complete = gets.chomp.capitalize.to_sym
    
    if to_do[task_complete].nil?
      puts "That task is  not on your to-do list."
    else
      to_do[task_complete] = "COMPLETE"
      puts ""
      puts "#{task_complete} has been marked 'COMPLETE'."
    end
    
  when 'D'
    puts "Here is your to-do list... please type the name of the task you would like to delete:"
    puts ""
    to_do.each { |task, status| puts "#{task} : #{status}"}
    puts""
    task_delete = gets.chomp.capitalize.to_sym
    
    if to_do[task_delete].nil?
      puts "That task is not on your to-do list."
    else
      to_do.delete(task_delete)
      puts "Task #{task_delete} has been deleted from your to-do list."
    end
    
  when 'X'
    puts "Goodbye :)"
    break
    
  else 
    puts "I'm sorry, I don't understand that input."
  end
end
  