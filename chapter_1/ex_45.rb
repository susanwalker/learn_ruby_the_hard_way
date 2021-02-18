class Animal
end

class Dog < Animal
  def initialize(name)
    @name = name
  end
end

class Cat < Animal
  def initialize(name)
    @name = name
  end
end

class Person
  attr_accessor :pet

  def initialize(name)
    @name = name

    @pet = nil
  end
end

class Employee < Person
  def initialize(name, salary)
    super(name)
    @salary = salary
  end
end

class Fish
end

class Salmon < Fish
end

class Halibut < Fish
end

rover = Dog.new("Rover")
satan = Cat.new("Satan")
mary = Person.new("Mary")
mary.pet = satan

frank = Employee.new("Frank", 120000)
frank.pet = rover

flipper = Fish.new
crouse = Salmon.new
harry = Halibut.new


full_name = Proc.new do|first, last|
first + " " + last
end
full_name.call("Susan", "Walker")
or
full_name["Susan", "Walker"]