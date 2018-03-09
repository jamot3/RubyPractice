### This program allows you to create, save, and load 'to-do' lists. Files are saved in the to_do_list.rb's local directory
### with the extension '.txt' and can be reloaded by typing the ENTIRE filename including extension (e.g. 'groceries.txt') when
### prompted for file name at load. I am currently trying to figure out how to return an error when the user types in an incorrect
### or non-existent filename -- currently, the program crashes if that occurs. 


to_do = Hash.new 

def save object, filename
    filename = "#{filename}.txt"
    File.open(filename, "w"){ |to_file| Marshal.dump(object, to_file)}
end

def load filename
    file = File.open(filename, "r"){ |from_file| Marshal.load(from_file)}
    $loaded_to_do = Hash.new
    file.each { |key, value| $loaded_to_do[key] = value }
end


while true 
    puts ""
    puts ""
    puts ""
    puts "To-do list"
    puts ""
    puts "=> To ADD a task to the list, type 'A'."
    puts "=> To VIEW your to-do list type 'V'."
    puts "=> To COMPLETE an item on your list, type 'C'."
    puts "=> To DELETE an item on the list, type 'D'."
    puts "=> To SAVE your list, type 'S'."
    puts "=> To LOAD a previously saved to-do list, type 'L':"
    puts "=> To CLEAR your current list, type 'CLEAR' :"
    puts "=> To EXIT the program, type 'X'."
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
    
    #when 'I'
        #puts "Here are your incomplete tasks:"
        #puts ""
        #to_do.each { |task, status| puts status == "Incomplete" ? "#{task}: #{status}" : nil}

    
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
    
   when 'S'
        puts "What would you like to name your file?"
        filename = gets.chomp.to_s
        save to_do, filename
        puts ""
        puts "Your to-do list named '#{filename}' has been saved."
        puts ""
          
   when 'L'
        puts "Here are your saved to-do lists: "
        files = Dir.glob("*.txt")
        puts files
        puts "Please enter the file-name and extension of the to-do list you would like to load:"
        puts ""
        filename = gets.chomp
        load filename
        to_do = $loaded_to_do
        puts "Your to-do list titled '#{filename}' has been loaded."
          
   when 'CLEAR'
        to_do = Hash.new
        puts "Your list has been cleared!"
        puts ""
    
   when 'X'
        puts "Goodbye :)"
        break
    
   else 
        puts "I'm sorry, I don't understand that input."
   end
      
end
  
