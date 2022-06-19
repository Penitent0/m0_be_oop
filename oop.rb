# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

class Unicorn
  def initialize(name)
    @name = name
    @color = "silver"
  end

  def say
    puts "*~*#{@name}*~*"
  end
end

fancy_horse = Unicorn.new("Fred")

fancy_horse.say

#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire
  def initialize(name, pet = "bat")
    @name = name
    @pet = pet
    @thirsty = true
  end

  def drink
    @thirty = false
  end
end

vampire1 = Vampire.new("Count", "frog")
vampire2 = Vampire.new("Sid")

p vampire1

p vampire2

vampire1.drink

p vampire1

#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon
  attr_reader = :eat
  def initialize(name, rider, color)
    @name = name
    @rider = rider
    @color = color
    @is_hungry = true
    @has_eaten = 0
  end

  def eat
    @has_eaten = @has_eaten + 1
    if @has_eaten >= 4
      @is_hungry = false
    else
      puts "#{@name} is still hungry!"
    end
  end
end

dragon1 = Dragon.new("puff", "bob", "green")

p dragon1

dragon1.eat
dragon1.eat
dragon1.eat
dragon1.eat

p dragon1


#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit
  def initialize(name, disposition)
    @name = name
    @disposition = disposition
    @age = 0
    @is_adult = false
    @is_old = false
    @has_ring = false

    def celebrate_birthday
      @age = @age + 1
    end

    def adult
      if @age >= 33
        @is_adult = true
      end
    end

    def elderly
      if @age >= 101
        @is_old = true
      end
    end

    def ring
      if @name == "Frodo"
        @has_ring = true
        puts "It's #{@has_ring}, Frodo has the ring!"
      end
    end
  end
end

hobbit1 = Hobbit.new("Frodo", "Grumpy")

hobbit2 = Hobbit.new("Samwise", "Hungry")

hobbit1.ring

hobbit1.celebrate_birthday

p hobbit1
