### This quiz contains a capital_hash and an array of state names. The quiz shuffles the names from 
### the state array, and then checks the value of the user input answer against the state's value in 
### capital_hash. The quiz will not repeat the same question in any one instance of the quiz. When 
### it completes the user-defined number of questions, it returns number of correct answers and 
### percent of correct answers of questions asked. 


def capital_hash
	{"Alabama" => "Montgomery",
	"Alaska" => "Juneau",
	"Arizona" => "Phoenix",
	"Arkansas" => "Little Rock",
	"California" => "Sacramento",
	"Colorado" => "Denver",
	"Connecticut" => "Hartford",
	"Delaware" => "Dover",
	"Florida" => "Tallahassee",
	"Georgia" => "Atlanta",
	"Hawaii" => "Honolulu",
	"Idaho" => "Boise",
	"Illinois" => "Springfield",
	"Indiana" => "Indianapolis",
	"Iowa" => "Des Moines",
	"Kansas" => "Topeka",
	"Kentucky" => "Frankfort",
	"Louisiana" => "Baton Rouge",
	"Maine" => "Augusta",
	"Maryland" => "Annapolis",
	"Massachusetts" => "Boston",
	"Michigan" => "Lansing",
	"Minnesota" => "Saint Paul",
	"Mississippi" => "Jackson",
	"Missouri" => "Jefferson City",
	"Montana" => "Helena",
	"Nebraska" => "Lincoln",
	"Nevada" => "Carson City",
	"New Hampshire" => "Concord",
	"New Jersey" => "Trenton",
	"New Mexico" => "Santa Fe",
	"New York" => "Albany",
	"North Carolina" => "Raleigh",
	"North Dakota" => "Bismarck",
	"Ohio" => "Columbus",
	"Oklahoma" => "Oklahoma City",
	"Oregon" => "Salem",
	"Pennsylvania" => "Harrisburg",
	"Rhode Island" => "Providence",
	"South Carolina" => "Columbia",
	"South Dakota" => "Pierre",
	"Tennessee" => "Nashville",
	"Texas" => "Austin",
	"Utah" => "Salt Lake City",
	"Vermont" => "Montpelier",
	"Virginia" => "Richmond",
	"Washington" => "Olympia",
	"West Virginia" => "Charleston",
	"Wisconsin" => "Madison",
	"Wyoming" => "Cheyenne"}
end

states = [ "Alaska", 
    "Alabama", 
    "Arkansas",  
    "Arizona", 
    "California",
    "Colorado",
    "Connecticut",
    "Delaware", 
    "Florida",
    "Georgia", 
    "Hawaii", 
    "Iowa", 
    "Idaho", 
    "Illinois", 
    "Indiana",
    "Kansas", 
    "Kentucky", 
    "Louisiana", 
    "Massachusetts", 
    "Maryland", 
    "Maine", 
    "Michigan", 
    "Minnesota", 
    "Missouri", 
    "Mississippi", 
    "Montana", 
    "North Carolina", 
    "North Dakota", 
    "Nebraska", 
    "New Hampshire", 
    "New Jersey", 
    "New Mexico", 
    "Nevada", 
    "New York", 
    "Ohio", 
    "Oklahoma", 
    "Oregon", 
    "Pennsylvania",  
    "Rhode Island", 
    "South Carolina", 
    "South Dakota", 
    "Tennessee", 
    "Texas", 
    "Utah", 
    "Virginia", 
    "Vermont", 
    "Washington", 
    "Wisconsin", 
    "West Virginia", 
    "Wyoming"]
    

puts "~~~~~~~~~~~~~~~~~~~~~~~"
puts "~~~U.S. Capital Quiz~~~"
puts "~~~~~~~~~~~~~~~~~~~~~~~"
puts ""
puts "Welcome! How long would you like your quiz to be?"
puts ""
puts "Please enter the number of questions you would like in your quiz:"


### User defines number of questions in quiz.
quiz_length = gets.chomp.to_i
while quiz_length > 50 || quiz_length < 1
    puts "Your quiz length must be longer than one question and no longer than fifty questions!"
    puts "Please enter a valid length for your quiz:"
    puts quiz_length = gets.chomp.to_i
end


puts ""
puts "Wonderful! Your quiz will begin as soon as you press enter..."
input = gets ### Blank input used as a 'press enter to continue'...
puts ""
puts ""



### I initially used rand(states.length) to randomize questions. This worked, but it risked repeating
### questions because it just returns randomized numbers between 0 and 49.
### By creating a shuffled array the length of the "states" array, and then using .pop to select 
### the a number off the end of the shuffled array, we ensure that no two questions are 
### repeated in a single quiz instance. 
 
rand_index = (0..49).to_a.shuffle
correct_questions = 0
questions_asked = 1



while questions_asked <= quiz_length
    
    index = rand_index.pop
    puts "What is the capital of #{states[index]}?"
    answer = gets.chomp.capitalize

    if answer.downcase == capital_hash[states[index]].downcase
        puts""
        puts "Correct! Great job!"
        correct_questions += 1
        puts""
    else
        puts ""
        puts "Aw, not quite ... the capital of #{states[index]} is actually #{capital_hash[states[index]]}."
        puts""
    end
    
    puts "You have gotten #{correct_questions}/#{quiz_length} correct."
    puts ""
    puts ""
    questions_asked+=1
end

puts "You're all done! Your final score is #{correct_questions}/#{quiz_length}, #{correct_questions/quiz_length.to_f.round*100}%"
    
