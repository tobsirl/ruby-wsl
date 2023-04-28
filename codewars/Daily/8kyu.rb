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

# Is the string uppercase? 8kyu
# Create a method to see whether the string is ALL CAPS.
# For example:
# is_uppercase("c") == false
# is_uppercase("C") == true
# is_uppercase("hello I AM DONALD") == false
# is_uppercase("HELLO I AM DONALD") == true
# is_uppercase("ACSKLDFJSgSKLDFJSKLDFJ") == false
# is_uppercase("ACSKLDFJSGSKLDFJSKLDFJ") == true
class String
  def is_upcase?
    self == upcase 
  end
end

# For UFC Fans (Total Beginners): Conor McGregor vs George Saint Pierre
# This is a beginner friendly kata especially for UFC/MMA fans.
# It's a fight between the two legends: Conor McGregor vs George Saint Pierre in Madison Square Garden.
# Only one fighter will remain standing, and after the fight in an interview with Joe Rogan the winner will make his legendary statement.
# It's your job to return the right statement depending on the winner!
# If the winner is George Saint Pierre he will obviously say:
# "I am not impressed by your performance."
# If the winner is Conor McGregor he will most undoubtedly say:
# "I'd like to take this chance to apologize.. To absolutely NOBODY!"
# Good Luck!
def quote(fighter)
  fighter.downcase == 'george saint pierre' ? "I am not impressed by your performance." : "I'd like to take this chance to apologize.. To absolutely NOBODY!"
end

# Geometry Basics: Distance between points in 2D 8kyu
# This series of katas will introduce you to basics of doing geometry with computers.
# Point objects have x, y attributes. Write a function calculating distance between Point a and Point b.
# Tests round answers to 6 decimal places.
def distance_between_points(a, b)
  Math.hypot(a.x - b.x, a.y - b.y)
end

# Alan Partridge II - Apple Turnover
# Alan is known for referring to the temperature of the apple turnover as Hotter than the sun!. 
# According to space.com the temperature of the sun's corona is 2,000,000 degrees Celsius, but we will ignore the science for now.
# Task
# Your job is simple, if (x) squared is more than 1000, return 'It's hotter than the sun!!',
# else, return 'Help yourself to a honeycomb Yorkie for the glovebox.'.
def apple(x)
  x.to_i**2 > 1000 ? "It's hotter than the sun!!" : "Help yourself to a honeycomb Yorkie for the glovebox."
end

# Grasshopper - Bug Squashing 8kyu
# Terminal game bug squashing
# You are creating a text-based terminal version of your favorite board game. 
# In the board game, each turn has six steps that must happen in this order: roll the dice, move, combat, get coins, buy more health, and print status.
health = 100
position = 0
coins = 0

def main ()
  roll_dice()
  move()
  combat()
  get_coins()
  buy_health()
  print_status()
end

# Crash Override 8kyu
# Every budding hacker needs an alias! The Phantom Phreak, Acid Burn, Zero Cool and Crash Override are some notable examples from the film Hackers.
# Your task is to create a function that, given a proper first and last name, will return the correct alias.
# Notes
# Two objects that return a one word name in response to the first letter of the first name and one for the first letter of the surname are already given. See the examples below for further details.
# If the first character of either of the names given to the function is not a letter from A - Z, you should return "Your name must start with a letter from A - Z."
# Sometimes people might forget to capitalize the first letter of their name so your function should accommodate for these grammatical errors.
def alias_gen(first_name, last_name)
  if first_name[0].match?(/[a-zA-Z]/) && last_name[0].match?(/[a-zA-Z]/)
    first_name = first_name[0].upcase
    last_name = last_name[0].upcase
    first_name = $first_name[first_name]
    last_name = $last_name[last_name]
    "#{first_name} #{last_name}"
  else
    "Your name must start with a letter from A - Z."
  end
end

# Dashatize it 6kyu
# Given a variable n,
# If n is an integer, Return a string with dash'-'marks before and after each odd integer, but do not begin or end the string with a dash mark. If n is negative, then the negative sign should be removed.
# If n is not an integer, return an empty value.
# Ex:
# dashatize(274) -> '2-7-4'
# dashatize(6815) -> '68-1-5'
def dashatize(num)
  return 'nil' unless num.is_a?(Integer)
  num = num.to_s
  num = num.gsub(/([13579])/, '-\1-')
  num = num.split('-')
  num.delete('')
  num.join('-')
end

# Expressions Matter 8kyu
# Given three integers a ,b ,c, return the largest number obtained after inserting the following operators and brackets: +, *, ()
# In other words , try every combination of a,b,c with [*+()] , and return the Maximum Obtained
# Consider an Example :
# With the numbers are 1, 2 and 3 , here are some ways of placing signs and brackets:
# 1 * (2 + 3) = 5
# 1 * 2 * 3 = 6
# 1 + 2 * 3 = 7
# (1 + 2) * 3 = 9
# So the maximum value that you can obtain is 9.
def expression_matter(a,b,c)
  [a+b+c, a*b*c, (a+b)*c, a*(b+c)].max
end

