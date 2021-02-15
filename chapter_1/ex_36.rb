def prompt
  puts "> "
end

def start
  puts "You are in a dark room. There are 2 doors, one to your left and one to your right."

  prompt; door = gets.chomp

  if door == "left"
    ghost_room
  elsif door =="right"
    monster_room
  else
    puts "Please try again!"
  end
end

def ghost_room
  puts "You see a big ghost in front of you! What do you do?"
  door_behind = false

  while true
    prompt; decision = gets.chomp

    if decision.include? "run"
      puts "You turn and run, you made it out alive!"
    elsif decision.include? "scream" and not door_behind
      puts "You scared away the ghost! A door appears from behind."
      door_behind = true
    elsif decision.include? "scream" and door_behind
      puts "Your second scream broght a new ghost- he eats you alive!"
      Process.exit(0)
    elsif decision.include? "open door" and door_behind
      money_room
    else
      puts "I don't know what that means."
    end
  end
end

def money_room
  puts "You made it to a room full of cash! Collect your prize. Good job!"
  Process.exit(0)
end

def monster_room
  puts "In front of you is a huge monster! What do you do?"

  prompt; your_move = gets.chomp

  if your_move.include? "run"
    puts "You manage to escape"
  elsif your_move.include? "faint"
    puts "You collapse and the monster eats you."
  else
    puts "The monster eats you alive."
  end
end

start()