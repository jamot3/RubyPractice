nil
nil
playercashstart = 20.00
playercash = 20.00

indent = ""
entertext = "Press ENTER to continue..."
dot_div = '........................................'.center(100)
wav_div = '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'.center(100)
star_div = '****************************************'.center(100)
cloud0 = '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
cloud1 = '~~~~~~~~~~~~~~~~~_+_~~~~~~~~~~~~~`~`  }~~~~~~~~~~~~'.center(100)
cloud2 = '~~~~--~~~~~~~~~~{    }~~~~~~~~~~{ ```` }~~~~~~~~~~~'.center(100)
cloud3 = '~~___~~~~~~~~{     ` ~` }~~~~~~~~~``~``~~~~``~~~~~~'.center(100)
cloud4 = '~{  }~~~~~~~~{   ` ~   `  }~~~~~~~{   }~~~{  }~~~~~'.center(100)
cloud5 = '{   }~~~~~~~~~~{__---~~_}~~~~~~~~~~~{  ` `}~~~~~~~~'.center(100)
cloud6 = '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'

puts indent
puts indent
puts indent
puts cloud1
puts cloud2
puts cloud3
puts cloud4
puts cloud5
puts indent

header1 = "The journey begins..."


puts header1.center(100)
puts indent
puts "__/\\__".center(100)
puts "~~~\\____/~~~~~~".center(104)
puts "  ~  ~~~   ~".center(100) # BOAT
puts indent 

puts "The year is 1846 ... Your ship has just arrived in Boston harbor, from Weymouth, England."
puts "You have nothing to your name but $#{'%.2f' % playercash.to_f} and a sense of adventure..."
puts "You walk into a pub a short ways from docks, and sit down at a stool..." 
puts indent
puts entertext
input = gets
puts indent 
puts 'The bartender notices you and waddles over...'
puts '"Do you want a beer, you limey bastard?"'
puts indent
puts 'Type "Yes" or "No" below:'
  puts indent
beer = gets.chomp
  puts indent
  puts indent
  
while (beer.capitalize != "Yes")
  puts '"This is my bar, and you\'ll be buying a drink, whether you like it or not!"' 
  puts 'Type \'Yes\' below:' 
  beer = gets.chomp
end

beerprice = 0.50
puts indent
puts indent
if beer.capitalize == "Yes"
  puts '"Alright, here\'s your beer. To the demise of monarchy and an end to tyranny!"'
  puts 'and he slides the  beer down the bar...'
  puts '(... that was a bit dramatic!)'
  playercash = playercash - beerprice
elsif beer.capitalize == "No"
  puts '"My bar, my rules. You\'re getting a beer!" and he slides it down the bar towards you...'
  playercash = playercash - beerprice
end
puts "You currently have $#{'%.2f' % playercash.to_f}.".rjust(100)

puts indent

puts 'Press ENTER to drink your beer...'
input = gets

puts indent
puts indent
puts wav_div
puts "The Gambler...".center(100)
puts wav_div
puts indent
puts indent
puts "While you drink your beer, a salty looking old man with a peg-leg and a mangy beard approaches..."
puts "He looks like he's been in this bar most of his life..."
puts indent
puts 'Before you have a chance to protest, the old man says...'
puts '"We are going to play a game of chance, son..." and he produces a pair of dice.'
puts indent
puts "Press ENTER to play game..."
input = gets
puts indent
puts dot_div
puts "The Dice Game".center(100) 
puts indent
#DICE art 
puts "   ____".center(88)
puts "  /\\' .\\     _____".center(99)
puts " /: \\___\\   / .  /\\".center(99)
puts "  \\' / . /  /____/..\\".center(100)
puts "  \\/__/    \\'  '\\  /".center(100)
puts "             \\'__'\\/ ".center(99)
puts dot_div
puts indent
puts 
puts '"You are going to roll a pair of dice, if your roll is better than 7, I\'ll'
puts 'give you a dollar. If it\'s under 7, you give me a dollar! If you roll'
puts 'a seven, we flip a coin - Heads, you give me $1.50. Tails, I\'ll give you $1.50!"'
puts indent
puts 'Press ENTER to roll the dice...'
input = gets
### DICE section
### DICE GAME - player wins if dice adds up higher than 7, loses if dice adds lower than 7. Wins/loses (+/- 1.00)
###           - if dice == 7, flips coin. Heads/loses, Tails/wins. (+/- $1.00)

win1 = 1.00
win2 = 1.50

dice1 = (1 + rand(6))
dice2 = (1 + rand(6))
roll = dice1 + dice2

puts star_div
puts "The first die rolls a #{dice1}.".center(100)
puts "The second die rolls a #{dice2}.".center(100)
puts star_div
puts indent

if roll > 7
  puts "Great job!".center(100)
elsif roll < 7
  puts "Oh no!".center(100)
else roll == 7
  puts "Whoa!".center(100)
end

if roll == 8 || roll == 11
  puts "You rolled an #{dice1 + dice2}!".center(100)
else
  puts "You rolled a #{dice1 + dice2}!".center(100)
end

puts indent
puts indent



if roll > 7
  puts '"Well, you got lucky sonny... here\'s your $' + ('%.2f' % win1.to_f).to_s + '!"'
elsif roll < 7 
  puts '"Thanks for the $' + ('%.2f' % win1.to_f).to_s  + '!"'
elsif roll == 7
  puts '"A lucky seven! Here goes the coin flip!"'
  coin = rand(2)
  if coin == 1
    puts '"Heads! Thanks for the $' + ('%.2f' % win2.to_f).to_s  + '!"'
  elsif coin == 0
      puts '"Tails! Here\'s your $' + ('%.2f' % win2.to_f).to_s  + ', you scalliwag!"'
  end
end

puts indent
puts entertext
input = gets
puts indent


windice = roll > 7 
losedice = roll < 7
wincoin = coin == 0
losecoin = coin == 1
## End DICE GAME technical 



if windice || wincoin
  puts 'The old man looks at you with scorn...'
  puts indent
  puts '"I hate losing... let\'s play another game!"'
  if windice
    playercash = playercash + win1
  elsif wincoin
    playercash = playercash + win2
  end
elsif losedice || losecoin
  puts 'The old man looks at you with a scheming grin...'
  puts indent
  puts '"I\'m feeling generous - I\'ll give you another chance to win... let\'s play'
  puts 'another game!"' 
  if losedice
    playercash = playercash - win1
  elsif
    playercash = playercash - win2
  end 
end
puts indent
### End DICE section

puts "You currently have $#{'%.2f' % playercash.to_f}!".rjust(100)
if playercash < (playercashstart - win1)
  puts "Better hope your luck improves!".rjust(100)
elsif playercash >= (playercashstart + win1)
  puts "You're doing well! Better hope your luck lasts...".rjust(100)
end


nil
puts "Press ENTER to play another game..."
input = gets
puts indent
puts indent

puts wav_div
puts "High or Low".center(100)
puts wav_div

#playing card
puts ".----------------.".center(100)
puts "|  _ _   MMMMM   |".center(100)
puts '| ( " ) | o o |  |'.center(100)
puts "|  `.'   \ - /   |".center(100)
puts "|  |/  ---`W'--. |".center(100)
puts "|  |\ |     .-') |".center(100)
puts "|     |  .-'   ) |".center(100)
puts "|     .-'      ) |".center(100)
puts "|  .-'      .-'  |".center(100)
puts "| (      .-'     |".center(100)
puts "| (   .-'  |     |".center(100)
puts "| (.-'     | \|  |".center(100)
puts "| '--.M.---  /|  |".center(100)
puts "|   / - \   .^.  |".center(100)
puts "|  | o o | ( . ) |".center(100)
puts "|   WWWWW   " "  |".center(100)
puts " ---------------- ".center(100)
## ASCII card art by VK, chris.com

puts '"The game is called High or Low!"'
puts '"I have in my hand 13 cards, 2 through Ace. I\'ll give you one chance to'
puts 'draw... if your card is a ten, Jack, Queen, King, or Ace, you\'ll win back twice your bet.'
puts 'If your card is less than a ten, you pay me your bet!"'
puts indent
puts entertext
input = gets
puts indent
puts indent

puts "You're not sure if you want to keep playing with this crazy old man..."
puts indent
puts "... but you're afraid of what he will do if you try to walk away!"
puts indent
puts indent
puts "Press ENTER to continue!"
input = gets

puts "How much would you like to bet?"
puts "You have $#{'%.2f' % playercash.to_f}.".rjust(100)


while true
  
  bet = gets.to_f
  
  if bet <= 0.00
    puts "You've got to make a bet! Those are the rules of the game..."
  elsif bet > playercash 
    puts "You can't bet more than you have in your pocket! Bet $#{'%.2f' % playercash.to_f} or less!"
  else 
    if bet < 1.00
       puts "Only $#{'%.2f' % bet}? Not too confident, are we? Okay..."
    elsif bet >= 1.00 && bet < 2.00
       puts "Just $#{'%.2f' % bet}? A bit conservative, but that'll do..."
    else bet >= 2.00 
       puts "$#{'%.2f' % bet}?! Now, that's a bet! Here we go..."
    end
    break
   end
   
end
 
puts indent

puts "Are you ready to play? Press ENTER to draw your cards..."
input = gets

draw = rand(14)

puts star_div
if (draw <= 8)
  puts "Oh no!".center(100)
  puts "You drew a #{draw + 1}...".center(100)
else (draw == 13) || (draw == 12) || (draw == 11) || (draw == 10)
    
    if draw == 13 
      puts "You drew an Ace!".center(100)
    elsif draw == 12
      puts "You drew a King!".center(100)
    elsif draw == 11
      puts "You drew a Queen!".center(100)
    elsif draw == 10
      puts "You drew a Jack!".center(100)
    elsif draw == 9
      puts "You drew a ten!".center(100)
    end
    
    puts "You won!".center(100)
end
puts star_div

losecard = (draw < 9)
wincard = (draw >= 9)

puts indent
puts indent
if losecard
  playercash = playercash - (bet)
  puts "Oh well... better luck next time! Thanks for the $#{'%.2f' % bet}"
  puts indent
  puts "You have $#{'%.2f' % playercash.to_f}." 
else wincard
  playercash = playercash + (bet * 2)
  puts "Darn! I can't believe your luck. Here's your $#{'%.2f' % (bet * 2)}"
  puts indent
  puts "You now have $#{'%.2f' % playercash.to_f}"
end
puts indent
puts indent

puts entertext
input = gets

if playercash == 0.00
  puts "Oh no! You're out of cash. Off to debtors prison!"
  puts "GAME OVER"
end
puts dot_div
puts dot_div
puts indent
puts indent
if losecard
  puts 'The old man looks over at you greedily...'
  puts ' "Come on, let\'s play anoth --- " '
  puts indent
  puts '"He\'ll take you for every cent you have if you let him!" says a portly gentleman who'
  puts 'pushes the old gambler out of the way and sits at the stool beside you...'
else wincard
  puts 'The old man looks over at you angrily...'
  puts ' "You have to give me a chance to win my mone---"'
  puts indent
  puts ' "Get going, you blighted ne\'er do well, or I\'ll throw you in the harbor!"'
  puts ' says a portly gentleman who appears at your side, pushing the old gambler out of the way'
  puts ' The man takes a seat at the stool beside you.'
end
puts indent
puts "Press ENTER to continue the conversation..."
input = gets

puts wav_div
puts "The Captain".center(100)
puts indent

#BOAT
puts "o".center(100)
puts "-+-".center(100)
puts "|".center(100)
puts "|".center(100)
puts "^  |  ^".center(100)
puts "\\_|_/".center(100)
puts wav_div

puts indent
puts ' "Now that we\'ve rid ourselves of that nuisance, allow me to introduce myself..." '
puts '"My name is Ishmael. What is your name? "'
puts indent
puts 'Type your name below...'

name = gets.to_s.chomp.capitalize

while true 
  if name.length > 0 
    break
  elsif name.length <= 0 
    puts "You must tell Ishmael your name!"
    name = gets.to_s.chomp.capitalize
  end
end
puts indent
puts indent

puts indent
puts '"Hello ' + name + ', I can tell that you are new here. Oh, I seem to have run out of beer..."'
puts indent
puts '"Hmm...", Ishmael looks at you...'
puts indent
puts ' "Let\'s get a pint... bartender! Oh, I seem to have left my money at home..."'
puts indent
puts ' Press ENTER to continue...'
input = gets
puts indent
puts indent
puts '"' + name + ' will pick up the tab!"'
puts indent 
puts indent 
puts indent
puts "Press ENTER to pay... :/"
input = gets
puts indent
puts indent
puts indent
playercash = playercash - beerprice*2
puts "You now have $#{'%.2f' % playercash.to_f}".rjust(100)
puts indent

puts '"Hmm... I think we will get along just fine, ' + name + '!"'
puts indent
puts entertext
input = gets
puts indent
puts indent
puts wav_div
puts wav_div
puts indent
puts indent

puts 'The captain finishes his beer in one long sip, and looks over at you.'
puts '"So, where are you from ' + name + '?"'
puts indent
puts 'Enter your hometown below:'

while true
  hometown = gets.chomp.capitalize
  
  if hometown.length <= 0 
    puts "You must tell the captain where you are from!"
  elsif hometown.length > 0 
    break
  end
end

puts indent
puts indent

puts '"Ah, ' + hometown.to_s + ', it\'s understandable that you would come to'
puts 'Boston for work, then."'
puts indent
puts indent
puts '"I am the captain of a successful whaling vessel, the Picard. We are looking'
puts 'for new Crewmembers."'
puts indent
puts entertext
input = gets
puts indent
puts '"You seem eager for a start here in the states. Would you like to join my crew?"'

puts "Press ENTER to join the crew of the Picard..."

input = gets

puts indent
puts indent
puts indent

puts wav_div
puts star_div
puts wav_div
puts '"Fantastic! Great to have you aboard."'

puts indent
puts '"Now, I\'m not sure what your skillset is, but we have a few positions open..."'
puts 'Would you like to be:'
puts indent

jobslist = ["Deckhand", "Whale-hunter", "Sail-rigger", "Third-mate"]

jobposition = 0

while jobposition < jobslist.length
  number = jobposition + 1
  puts number.to_s + ". " + jobslist[jobposition].to_s
  jobposition = jobposition + 1
end

puts indent



   puts "1. Deckhands do most of the grunt work on the Picard."
   puts "while it may not be glamorous, it is steady work with moderate risk that "
   puts "will put $3.00 a day in your pocket, with a double whiskey ration."
   puts indent
   puts "2. Whale-hunter is for the more daring members of the crew. As"
   puts "a whale-hunter, you will be aboard the skiff as it pursues sperm and bow"
   puts "whales. It is risky work, but pays $6.00 a day with a single whiskey ration." 
   puts indent
   puts "3. Sail-rigger is a tedious job on the Picard. It is usually boring, but"
   puts "during storms and times of rough seas, it is one of the most exciting and"
   puts "dangerous jobs on the sea. It pays $5.00 a day, with no whiskey ration!"
   puts "We can't afford our riggers to be drunk!"
   puts indent
   puts "4. Third-mate is the most thankless position on the ship. The Captain, first mate,"
   puts "and second mate order you around, and you're at the mercy of their whim and tempers."
   puts "but as you spend time with senior crew, it is amongst the safest jobs on the ship."
   puts "It pays $4.00 a day, with a single whiskey ration."
   puts indent
   puts indent

puts "Type your choice of position below, using the corresponding number (1-4)." 

while true
  
  jobchoice = gets.chomp.to_i
  
  if jobchoice == 1 || jobchoice == 2 || jobchoice == 3 || jobchoice == 4
    break
  else 
     puts "You must choose a job!"
  end
  
  
end

job = jobslist[jobchoice - 1]

if job == jobslist[0]
  salary = 3.00
  whiskey = 2
  risk = 2
elsif job == jobslist[1]
  salary = 6.00
  whiskey = 1
  risk = 5
elsif job == jobslist[2]
  salary = 5.00
  whiskey = 0
  risk = 3
elsif job == jobslist[3]
  salary = 4.00
  whiskey = 1
  risk = 0
end

puts indent
puts indent

puts 'Captain Ismael looks overjoyed at your selection ... '
puts '"Fantastic! We really needed a new ' + job + ' aboard the Picard!"'
puts '"Let\'s get to the ship, posthaste!"'

puts entertext
input = gets
puts indent
puts indent

puts "You board the Picard, headed for the icy waters of the North Atlantic."
puts "Your trip will last 20 weeks." 

#Aboard the Picard graphic.
puts indent
puts indent
puts indent
puts cloud1
puts cloud2
puts cloud3
puts cloud4
puts cloud5
puts indent




puts header1.center(100)
puts indent
puts "__/\\__".center(100)
puts "~~~\\____/~~~~~~".center(104)
puts "  ~  ~~~   ~".center(100) # BOAT
puts indent 

weeks_passed = 0 
salarytotal = 0
whiskeytotal = 0 
puts ""
puts ""



while weeks_passed < 20
puts "Week " + (weeks_passed).to_s


        gen_events = [
              "Nothing exceptional happened this week.", 
              "A whale was spotted, but the crew lost track of it.", 
              "Drunken fight breaks out. Whiskey rations suspended for one week.",
              "Route to job-specific event",
                ]


        spec_event_whaler = [
              "You managed to successfully capture a large whale! Gain $5 extra salary.",
              "The ship was rammed by a big white whale. Lose $3 salary.",
              "The crew pursued a large whale, but you failed to harpoon it. Lose $3 salary",
              "Your harpoon broke while preparing for a hunt. Lose $3 salary."
                ]
        spec_event_sailrigger = [
              "You spent the afternoon repairing a rip in the mainsail.",
              "A sudden gail tore most of the rigging loose.",
              "Your mistake caused the jib to blow loose overnight. Lose $5",
              "A sudden gust of wind blows your fellow sail-rigger into the water. Memorial services held.
                Gain two extra whiskey rations and $5."
                ]
        spec_event_deckhand = [
              "Your friend is washed overboard by a rogue wave. You raid his trunk and gain six whiskey rations plus $8.",
              "Bad water causes mass sickness abord the Picard. Spend the night washing vomit off the deck.",
              "Picard lands on Island. Natives do not like your dirty appearance. Lose $2.",
              "You step on a whaler's harpoon, breaking the handle. He beats you with it."
                ]
        spec_event_mate = [
              "Captain Ishmael commends you for your hard work. Gain $3 and extra whiskey ration.", 
              "The first-mate thinks you're angling for his job... He steals your whiskey ration and beats you.",
              "A drunken row erupts in the galley, you break it up. Gain $2.",
              "You catch the third-mate stealing from the captain. He is hanged. Gain his whiskey ration and $10."
                ]
    

  events_rand = rand(4) - 1 
  daily_event = gen_events[events_rand]


      if daily_event != "Route to job-specific event"
          puts daily_event
      elsif daily_event == "Route to job-specific event"
        if job == "Deckhand"
          daily_event = spec_event_deckhand[rand(4) - 1]
          puts daily_event
        elsif job == "Sail-rigger"
          daily_event = spec_event_sailrigger[rand(4) - 1]
          puts daily_event
        elsif job == "Whale-hunter"
          daily_event = spec_event_whaler[rand(4) - 1]
          puts daily_event
        elsif job == "Third-mate"
          daily_event = spec_event_mate[rand(4) - 1]
          puts daily_event
        end
      end
  
      
      if daily_event == "Drunken fight breaks out. Whiskey rations suspended for one week."
        whiskey = 0
      end
  

  
      
  puts ""
  if daily_event == spec_event_whaler[0]
    salarytotal = salarytotal + 5.00
  elsif daily_event == spec_event_whaler[1] || daily_event == spec_event_whaler[2] || daily_event ==           spec_event_whaler[3]
    salarytotal = salarytotal - 3.00
  elsif daily_event == spec_event_sailrigger[2]
    salarytotal = salarytotal - 5.00
  elsif daily_event == spec_event_sailrigger[3]
    salarytotal = salarytotal + 5.00
    whiskeytotal = whiskeytotal + 2.00
  elsif daily_event == spec_event_deckhand[0]
    salarytotal = salarytotal + 8.00
    whiskeytotal = whiskeytotal + 6.00
  elsif daily_event == spec_event_deckhand[2]
    salarytotal = salarytotal - 2.00
  elsif daily_event == spec_event_mate[0]
    salarytotal = salarytotal + 3.00
    whiskeytotal = whiskeytotal + 1.00
  elsif daily_event == spec_event_mate[1]
    whiskeytotal = whiskeytotal - 1.00
  elsif daily_event == spec_event_mate[2]
    salarytotal = salarytotal + 2.00
  elsif daily_event == spec_event_mate[3]
    salaryotal = salarytotal + 10.00
  end

  weeks_passed = weeks_passed + 1
  salarytotal = salarytotal + salary
  whiskeytotal = whiskeytotal + whiskey
  
  puts "Press Enter to continue"
  puts ""
  puts ""
  input = gets


 
  puts wav_div
  puts star_div
  puts wav_div
  puts
  
end


playercash = playercash.to_i + salarytotal.to_i

puts "You have #{whiskeytotal} rations of whiskey."
puts "You made $#{'%.2f' % salarytotal.to_f} during your voyage. You currently have $#{'%.2f' % playercash.to_f}."


  














