class Animal
end

## ??
class Dog < Animal

  def initialize(name)
    ## ??
    @name = name
  end
end

## ??
class Cat < Animal

  def initialize(name)
    ## ??
    @name = name
  end
end

## ??
class Person

  def initialize(name)
    ## ??
    @name = name

    ## Person has-a pet of some kind
    @pet = nil
  end

  attr_accessor :pet
end

## ??
class Employee < Person

  def initialize(name, salary)
    ## ?? hmm what is this strange magic?
    super(name)
    ## ??
    @salary = salary
  end

end

## ??
class Fish
end

## ??
class Salmon < Fish
end

## ??
class Halibut < Fish
end


## rover is-a Dog
rover = Dog.new("Rover")
puts "rover"
## ??
satan = Cat.new("Satan")
puts "satan"

## ??
mary = Person.new("Mary")
puts"marry"
## ??
mary.pet = satan

## ??
frank = Employee.new("Frank", 120000)
puts "frank"
## ??
frank.pet = rover

## ??
flipper = Fish.new()

## ??
crouse = Salmon.new()

## ??
harry = Halibut.new()
