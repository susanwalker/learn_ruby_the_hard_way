class TheThing
  attr_reader :number

  def initialize
    @number = 0
  end

  def some_function
    puts "I got called"
  end

  def add_me_up(more)
    @number += more
    return @number
  end
end

# two different things

a = TheThing.new
b = TheThing.new

a.some_function
b.some_function

puts a.add_me_up(20)
puts a.add_me_up(20)
puts b.add_me_up(30)
puts b.add_me_up(30)

puts a.number
puts b.number

# -------------------------
# ruby class methods

class Game

  def initialize(start)
    @quips = [
      "You died.",
      "Nice job",
      "Loser."
    ]

    @start = start
    puts "in init @start = " + @start.inspect
  end

  def prompt
    print "> "
  end

  def play
    puts "@start => " + @start.inspect
    next_room = @start

    while true
      puts "\n ------"
      room = method(next_room)
      next_room = room.call
    end
  end

  def death
    puts @quips[rand(@quips.length)]
    Process.exit(1)
  end

  def central_corridor
  end

  def laser_weapon_armory
  end

  def the_bridge
  end

  def escape_pod
  end

  a_game = Game.new(:central_corridor)
  a_game.play
end