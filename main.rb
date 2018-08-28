def start
  puts "You walk into work."
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
    # do something
  elsif choice.include?("ask")
    # do something else
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
    # passive agressive hipchat message method
  elsif choice.match(/sink|dishwasher/)
    puts "set in sink"
  else
    quit("Who the heck leaves a community spoon?")
  end
end

def fired(why)
  puts why, "You're fired!"
  exit(0)
end

def quit(reason)
  put reason, "Adios!"
  exit(0)
end

start
