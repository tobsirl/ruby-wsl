# ASCII Total 8kyu
# You'll be given a string, and have to return the sum of all characters as an int. 
# The function should be able to handle all printable ASCII characters.
# Examples
# uniTotal("a") == 97 uniTotal("aaa") == 291
def uni_total(str)
  str.chars.map(&:ord).sum
end

# Sum of positive 8kyu
# You get an array of numbers, return the sum of all of the positives ones.
# Example [1,-4,7,12] => 1 + 7 + 12 = 20
def positive_sum(arr)
  arr.select(&:positive?).sum
end

# Count of positives / sum of negatives 8kyu
# Given an array of integers.
# Return an array, where the first element is the count of positives numbers and the second element is sum of negative numbers.
# If the input array is empty or null, return an empty array.
# Example [1,-4,7,12] => [2, -5]
def count_positives_sum_negatives(lst)
  return [] if lst.nil? || lst.empty?
  [lst.count(&:positive?), lst.select(&:negative?).sum]
end

# Classy Classes 8kyu
# Basic Classes, this kata is mainly aimed at the new JS ES6 Update introducing classes
# Task
# Your task is to complete this Class, the Person class has been created. 
# You must fill in the Constructor method to accept a name as string and an age as number, 
# complete the get Info property and getInfo method/Info getter which should return johns age is 34
class Person
  attr_accessor :name, :age
  def initialize(name, age)
    @name = name
    @age = age
  end

  def info
    "#{name}s age is #{age}"
  end
end

# Classy Extensions 8kyu
# Classy Extensions, this kata is mainly aimed at the new JS ES6 Update introducing classes
# Task
# Your task is to complete the Cat class which Extends Animal and replace the speak method to return the cats name + meows. e.g. 'Mr Whiskers meows.'
# The name attribute is passed with this.name (JS), @name (Ruby) or self.name (Python).
class Cat < Animal
  def speak
    "#{name} meows."
  end
end

# Playing with cubes 1 8kyu
# Create a public class called Cube without a constructor which gets one single private Integer variable Side,
# a getter GetSide() and a setter SetSide(int num) method for this property.
# Actually, getter and setter methods are not the common way to write this code in C#.
# In the next kata of this series, we gonna refactor the code and make it a bit more professional...
class Cube
  attr_accessor :side
  def get_side
    side || 0
  end

  def set_side(num)
    self.side = num
  end
end

# Grasshopper - Terminal Game #1 8kyu
# In this first kata in the series, you need to define a Hero prototype to be used in a terminal game.
# The hero should have the following attributes:
# attribute value
# name user argument or 'Hero'
# position '00'
# health 100
# damage 5
# experience 0
class Hero
  attr_accessor :name, :position, :health, :damage, :experience
  def initialize(name = 'Hero')
    @name = name
    @position = '00'
    @health = 100
    @damage = 5
    @experience = 0
  end
end

# Finsih Guess the Number Game 8kyu
# Imagine you are creating a game where the user has to guess the correct number. But there is a limit of how many guesses the user can do.
# If the user tries to guess more than the limit, the function should throw an error
# If the user guess is right it should return true
# If the user guess is wrong it should return false and lose a life
# Can you finish the game so all the rules are met?
class Guesser
  attr_accessor :number, :lives
  def initialize(number, lives)
    @number = number
    @lives = lives
  end

  def guess(n)
    raise 'No more guesses allowed' if lives.zero?
    if n == number
      true
    else
      self.lives -= 1
      false
    end  
  end
end

