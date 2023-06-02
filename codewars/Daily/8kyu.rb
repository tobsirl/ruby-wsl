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

# Fake Binary 8kyu
# Given a string of digits, you should replace any digit below 5 with '0' and any digit 5 and above with '1'.
# Return the resulting string.
def fake_bin(s)
  s.gsub(/[0-4]/, '0').gsub(/[5-9]/, '1')
end

# Polish alphabet 8kyu
# There are 32 letters in the Polish alphabet: 9 vowels and 23 consonants.
# Your task is to change the letters with diacritics:
# ą -> a,
# ć -> c,
# ę -> e,
# ł -> l,
# ń -> n,
# ó -> o,
# ś -> s,
# ź -> z,
# ż -> z
def correct_polish_letters(s)
  s.tr('ąćęłńóśźż', 'acelnoszz')
end

# Duck Duck Goose 8kyu
# The objective of Duck, duck, goose is to walk in a circle, tapping on each player's head until one is finally chosen.
# Task: Given an array of Player objects (an array of associative arrays in PHP) and an index (1-based), return the name of the chosen Player.
# Example:
# duck_duck_goose([a, b, c, d], 1) should return a.name
# duck_duck_goose([a, b, c, d], 5) should return a.name
def duck_duck_goose(players, goose)
  players[(goose - 1) % players.length].name
end

# Array Leaders (Array Series #3) 7kyu
# Definition
# An element is leader if it is greater than The Sum all the elements to its right side.
# Task
# Given an array/list [] of integers , Find all the LEADERS in the array.
# Notes
# Array/list size is at least 3 .
# Array/list's numbers Will be mixture of positives , negatives and zeros
# Repetition of numbers in the array/list could occur.
# Returned Array/list should store the leading numbers in the same order in the original array/list .
def array_leaders(numbers)
  numbers.select.with_index { |num, index| num > numbers[index + 1..-1].sum }
end

# Find the Slope 8kyu
# https://www.codewars.com/kata/55a75e2d0803fea18f00009d/train/ruby
# Given an array of 4 integers
# [a,b,c,d] representing two points (a, b) and (c, d), return a string representation of the slope of the line joining these two points.
# For an undefined slope (division by 0), return undefined . Note that the "undefined" is case-sensitive.
# Assume that [a,b,c,d] and the answer are all integers (no floating numbers!). Slope: https://en.wikipedia.org/wiki/Slope
def find_slope(points)
  return 'undefined' if points[2] - points[0] == 0
  ((points[3] - points[1]) / (points[2] - points[0])).to_s
end

# Regexp Basics - is it a digit? 8kyu
# https://www.codewars.com/kata/567bf4f7ee34510f69000032/train/ruby
# Implement String#digit? (in Java StringUtils.isDigit(String)), which should return true if given object is a digit (0-9), false otherwise.
class String
  def digit?
    self.match?(/\A\d\z/)
  end
end

# Evil or Odious
# https://www.codewars.com/kata/56fcfad9c7e1fa2472000034/train/ruby
# The number n is Evil if it has an even number of 1's in its binary representation.
# First ten: 3, 5, 6, 9, 10, 12, 15, 17, 18, 20
# The number n is Odious if it has an odd number of 1's in its binary representation.
# First ten: 1, 2, 4, 7, 8, 11, 13, 14, 16, 19
# You have to write a function that determine if a number is Evil of Odious, function should return "It's Evil!" in case of evil number and "It's Odious!" in case of odious number.
def evil(n)
  n.to_s(2).count('1').even? ? "It's Evil!" : "It's Odious!"
end

# Grader 8kyu
# https://www.codewars.com/kata/53d16bd82578b1fb5b00128c/train/ruby
# Create a function that takes a number as an argument and returns a grade based on that number.
# Score Grade
# Anything greater than 1 or less than 0.6  'F'
# 0.9 or greater  "A"
# 0.8 or greater  "B"
# 0.7 or greater  "C"
# 0.6 or greater  "D"
def grader(score)
  case score
  when 0.9..1 then 'A'
  when 0.8..0.9 then 'B'
  when 0.7..0.8 then 'C'
  when 0.6..0.7 then 'D'
  else 'F'
  end
end

# NBA full 48 minutes average 8kyu
# https://www.codewars.com/kata/587c2d08bb65b5e8040004fd/train/ruby
# An NBA game runs 48 minutes (Four 12 minute quarters). Players do not typically play the full game,
# subbing in and out as necessary. Your job is to extrapolate a player's points per game if they played the full 48 minutes.
# Write a function that takes two arguments, ppg (points per game) and mpg (minutes per game) and returns a straight extrapolation of ppg per 48 minutes rounded to the nearest tenth.
# Examples:
# nba_extrap(12, 20) # 28.8
# nba_extrap(10, 10) # 48
# nba_extrap(5, 17) # 14.1
# nba_extrap(0, 0) # 0
# Notes:
# All inputs will be either be an integer or float.
# Follow your dreams!
def nba_extrap(ppg, mpg)
  mpg.zero? ? 0 : (ppg * 48.0 / mpg).round(1)
end

# Ensure question 8kyu
# https://www.codewars.com/kata/5866fc43395d9138a7000006/train/ruby
# Given a string, write a function that returns the string with a question mark ("?") appends to the end,
# unless the original string ends with a question mark, in which case, returns the original string.
def ensure_question(s)
  s.end_with?('?') ? s : s + '?'
end

# Pillars 8kyu
# https://www.codewars.com/kata/5bb0c58f484fcd170700063d/train/ruby
# There are pillars near the road. The distance between the pillars is the same and the width of the pillars is the same.
# Your function accepts three arguments:
# number of pillars (≥ 1);
# distance between pillars (10 - 30 meters);
# width of the pillar (10 - 50 centimeters).
# Calculate the distance between the first and the last pillar in centimeters (without the width of the first and last pillar).
def pillars(num_of_pillars, dist, width)
  num_of_pillars > 1 ? (num_of_pillars - 1) * dist * 100 + (num_of_pillars - 2) * width : 0
end

# Freudian translator 8kyu
# https://www.codewars.com/kata/5713bc89c82eff33c60009f7/train/ruby
# You probably know the 42 number as "The answer to life, the universe and everything" according to Douglas Adams' "The Hitchhiker's Guide to the Galaxy".
# For Freud, the answer was quite different.
# In the society he lived in, people - women in particular - had to repress their sexual needs and desires. 
# This was simply how the society was at the time. Freud then wanted to study the illnesses created by this, 
# and so he digged to the root of their desires. 
# This led to some of the most important psychoanalytic theories to this day, Freud being the father of psychoanalysis.
# Now, basically, when a person hears about Freud, s/he hears "sex" because for Freud, everything was related to, and explained by sex.
# In this kata, the function will take a string as its argument, and return a string with every word replaced by the explanation to everything, according to Freud. Note that an empty string, or no arguments, should return an empty string.
def to_freud(sentence)
  sentence.split.map { |word| word.empty? ? "" : "sex" }.join(" ")
end

# Classic Hello World 8kyu
# https://www.codewars.com/kata/57036f007fd72e3b77000023/train/ruby
# You are given a method called main, make it print the line Hello World!, 
# (yes, that includes a new line character at the end) and don't return anything
# Note that for some languages, the function main is the entry point of the program.
# Here's how it will be tested:
# Solution.main("parameter1","parameter2","parametern");
# Hints:
# Check your references
# Think about the scope of your method
# For prolog you can use write but there are better ways
class Solution
  def self.main(*args)
    puts "Hello World!"
  end
end

