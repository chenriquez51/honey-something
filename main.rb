def start
  puts "You're at your work desk."
  puts "You open your laptop. You have a message."
  puts "Do you open the message?"

  print "> "
  choice = $stdin.gets.chomp

  if choice == "yes"
    indexing_question
  elsif choice == "no"
    get_coffee
  else
    puts "Answer yes or no. Why'd you even show up if you're not going to do anything?"
    start
  end
end

def indexing_question
  puts "Looks like an index is stuck."
  puts "How do you fix it?"

  print "> "
  choice = $stdin.gets.chomp

  if choice.include?("restart")
    fired("Production database goes down.")
  elsif choice.include?("ask")
    ask_oracle
  else
    fired("Production site went down.")
  end
end

def get_coffee
  puts "You go and get coffee in the kitchen."
  puts "You find a spoon on the counter next to the coffee maker."
  puts "Wtf?"

  print "> "
  choice = $stdin.gets.chomp

  if choice.include?("hipchat")
    passive_aggressive_hipchat_message
  elsif choice.match(/sink|dishwasher/)
    win("You saved the day. Office crisis resolved.")
  else
    quit("I'm tired of this place!!! Who leaves a spoon out?!")
  end
end

def passive_aggressive_hipchat_message
  puts "You go to hipchat."
  puts "What do you post?"

  print "> "
  choice = $stdin.gets.chomp

  puts "You've brow beaten the spoon leaver into not leaving spoons on the counter."
  start
end

def ask_oracle
  puts "You reachout to the Engineering Oracle (actual title)."
  puts "What do you ask the Engineering Oracle?"

  print "> "
  choice = $stdin.gets.chomp

  if choice.include?("help")
    puts "Engineering Oracle: I'm busy!"
    start
  elsif choice.include?("broken")
    puts "Engineering Oracle: Did you try to restart?"
    start
  else
    puts "Engineering Oracle: What are you talking about?! Everything is awesome."
    get_coffee
  end
end

def fired(why)
  puts why, "You're fired!"
  exit(0)
end

def quit(reason)
  puts reason, "Adios!"
  exit(0)
end

def win(reason)
  puts reason, "Good job!"
  exit(0)
end

start
