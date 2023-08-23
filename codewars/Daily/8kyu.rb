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

# Did she say hallo? 8kyu
# https://www.codewars.com/kata/56a4addbfd4a55694100001f/train/ruby
# You received a whatsup message from an unknown number. Could it be from that girl/boy with a foreign accent you met yesterday evening?
# Write a simple regex to check if the string contains the word hallo in different languages.
# These are the languages of the possible people you met the night before:
# hello - english
# ciao - italian
# salut - french
# hallo - german
# hola - spanish
# ahoj - czech republic
# czesc - polish
# By the way, how cool is the czech republic hallo!!
# PS. you can assume the input is a string. PPS. to keep this a beginner exercise you don't need to check
# if the greeting is a subset of word (Hallowen can pass the test)
def validate_hello(greetings)
  greetings.match?(/(hello|ciao|salut|hallo|hola|ahoj|czesc)/i)
end

# UEFA EURO 2016 8kyu
# https://www.codewars.com/kata/57613fb1033d766171000d60/train/ruby
# Finish the uefaEuro2016() function so it return string just like in the examples below:
# uefa_euro_2016(['Germany', 'Ukraine'],[2, 0]) # "At match Germany - Ukraine, Germany won!"
# uefa_euro_2016(['Belgium', 'Italy'],[0, 2]) # "At match Belgium - Italy, Italy won!"
# uefa_euro_2016(['Portugal', 'Iceland'],[1, 1]) # "At match Portugal - Iceland, teams played draw."
def uefa_euro_2016(teams, scores)
  if scores[0] > scores[1]
    "At match #{teams[0]} - #{teams[1]}, #{teams[0]} won!"
  elsif scores[0] < scores[1]
    "At match #{teams[0]} - #{teams[1]}, #{teams[1]} won!"
  else
    "At match #{teams[0]} - #{teams[1]}, teams played draw."
  end
end

# Is your period late? 8kyu
# https://www.codewars.com/kata/578a8a01e9fd1549e50001f1/train/ruby
# In this kata, we will make a function to test whether a period is late.
# Our function will take three parameters:
# last - The Date object with the date of the last period
# today - The Date object with the date of the check
# cycleLength - Integer representing the length of the cycle in days
# If the today is later from last than the cycleLength, the function should return true.
# We consider it to be late if the number of passed days is larger than the cycleLength.
# Otherwise return false.
def period_is_late(last,today,cycle_length)
  (today - last).to_i > cycle_length
end

# Logical calculator 8kyu
# https://www.codewars.com/kata/57096af70dad013aa200007b/train/ruby
# Given an array of Boolean values and a logical operator, return a Boolean result based on sequentially applying the operator to the values in the array.
# Examples
# booleans = [True, True, False], operator = "AND"
# True AND True -> True
# True AND False -> False
# return False
# booleans = [True, True, False], operator = "OR"
# True OR True -> True
# True OR False -> True
# return True
# booleans = [True, True, False], operator = "XOR"
# True XOR True -> False
# False XOR False -> False
# return False
# Input
# an array of Boolean values (1 <= array_length <= 50)
# a string specifying a logical operator: "AND", "OR", "XOR"
# Output
# A Boolean value (True or False).
def logical_calc(array, op)
  case op
  when "AND"
    array.all?
  when "OR"
    array.any?
  when "XOR"
    array.count(true).odd?
  end
end

# Who is going to pay for the wall? 8kyu
# https://www.codewars.com/kata/58bf9bd943fadb2a980000a7/train/ruby
# Don Drumphet lives in a nice neighborhood, but one of his neighbors has started to let his house go.
# Don Drumphet wants to build a wall between his house and his neighbor’s, and is trying to get the neighborhood association to pay for it.
# He begins to solicit his neighbors to petition to get the association to build the wall.
# Unfortunately for Don Drumphet, he cannot read very well, has a very limited attention span, and can only remember two letters from each of his neighbors’ names.
# As he collects signatures, he insists that his neighbors keep truncating their names until two letters remain, and he can finally read them.
# Your code will show Full name of the neighbor and the truncated version of the name as an array. If the number of the characters in name is less than or equal to two, it will return an array containing only the name as is"
def who_is_paying(name)
  name.length <= 2 ? [name] : [name, name[0..1]]
end

# Name on billboard 8kyu
# https://www.codewars.com/kata/570e8ec4127ad143660001fd/train/ruby
# You can print your name on a billboard ad. Find out how much it will cost you. Each letter has a default price of £30,
# but that can be different if you are given 2 parameters instead of 1.
# You can not use multiplier "*" operator.
# If your name would be Jeong-Ho Aristotelis, ad would cost £600. 20 leters * 30 = 600 (Space counts as a letter).
def billboard(name, price = 30)
  name.chars.map { price }.sum
end

# Quadratic Coefficients Solver 8kyu
# https://www.codewars.com/kata/5d59576768ba810001f1f8d6/train/ruby
# In this Kata you are expected to find the coefficients of quadratic equation of the given two roots (x1 and x2).
# Equation will be the form of ax^2 + bx + c = 0
# Return type is a Vector containing coefficients of the equations in the order (a, b, c).
# Since there are infinitely many solutions to this problem, we fix a = 1.
# Remember, the roots can be written like (x-x1) * (x-x2) = 0
# Example
# quadratic(1,2) = (1, -3, 2)
# This means (x-1) * (x-2) = 0; when we do the multiplication this becomes x^2 - 3x + 2 = 0
def quadratic(x1, x2)
  [1, -(x1 + x2), x1 * x2]
end

# The 'if' function 8kyu
def _if(bool, ifTrue, ifFalse)
  bool ? ifTrue.call : ifFalse.call  
end

# Return Two Highest Values in List 8kyu
# https://www.codewars.com/kata/57ab3c09bbf1b96c010000bf/train/ruby
# In this kata, your job is to return the two highest values in a list, this doesn't include duplicates.
# When given an empty list, you should also return an empty list, no strings will be passed into the list.
# The return should also be ordered from highest to lowest.
# If the argument passed isn't a list, you should return false.
# Examples:
# two_highest([4, 10, 10, 9]) should return [10, 9]
# two_highest([]) should return []
# two_highest("test") should return False
def two_highest(list)
  list.is_a?(Array) ? list.uniq.max(2) : false
end

# Barking mad 8kyu
# https://www.codewars.com/kata/54dba07f03e88a4cec000caf/train/ruby
# Teach snoopy and scooby doo how to bark using object methods. Currently only snoopy can bark and not scooby doo.
# snoopy.bark() #return "Woof"
# scoobydoo.bark() #undefined
# Use method prototypes to enable all Dogs to bark.
class Dog
  def def initialize(breed)
    @breed = breed
  end

  def bark
    "Woof"
  end
end

snoopy = Dog.new("Beagle")
scoobydoo = Dog.new("Great Dane")

# Days in the year 8kyu
# https://www.codewars.com/kata/56d6c333c9ae3fc32800070f/train/ruby
# A variation of determining leap years, assuming only integers are used and years can be negative and positive.
# Write a function which will return the days in the year and the year entered in a string.
# For example 2000, entered as an integer, will return as a string 2000 has 366 days
# There are a few assumptions we will accept the year 0, even though there is no year 0 in the Gregorian Calendar.
# Also the basic rule for validating a leap year are as follows
# Most years that can be divided evenly by 4 are leap years.
# Exception: Century years are NOT leap years UNLESS they can be evenly divided by 400.
# So the years 0, -64 and 2016 will return 366 days.
# Whilst 1974, -10 and 666 will return 365 days.
def year_days(year)
  if year % 4 == 0 && year % 100 != 0 || year % 400 == 0
    "#{year} has 366 days"
  else
    "#{year} has 365 days"
  end
end

# Safen User Input Part I - htmlspecialchars 8kyu
# https://www.codewars.com/kata/56bcaedfcf6b7f2125001118/train/ruby
# You are a(n) novice/average/experienced/professional/world-famous Web Developer (choose one) who owns a(n) simple/clean/slick/beautiful/complicated/professional/business website (choose one or more) which contains form fields so visitors can send emails or leave a comment on your website with ease. However, with ease comes danger. Every now and then, a hacker visits your website and attempts to compromise it through the use of XSS (Cross Site Scripting). This is done by injecting script tags into the website through form fields which may contain malicious code (e.g. a redirection to a malicious website that steals personal information).
# Mission
# Your mission is to implement a function htmlspecialchars() that converts the following potentially harmful characters:
# < --> &lt;
# > --> &gt;
# " --> &quot;
# & --> &amp;
# Good luck :D
def html_special_chars(s)
  s.gsub(/[<>"&]/, '<' => '&lt;', '>' => '&gt;', '"' => '&quot;', '&' => '&amp;')
end

# Online RPG: player to qualifying stage? 8kyu
# https://www.codewars.com/kata/55849d76acd73f6cc4000087/train/ruby
# Let's imagine we have a popular online RPG. A player begins with a score of 0 in class E5.
# A1 is the highest level a player can achieve.
# Now let's say the players wants to rank-up to class E4. To do so the player needs to achieve at least 100 points.
# Write a script that will check to see if the player has achieved at least 100 points in his class.
# If so, he enters the qualifying stage.
# In that case, we return, `"Well done! You have advanced to the qualifying stage. Win 2 out of your next 3 games to rank up."`.
# Otherwise return, `False/false` (according to the language n use).
# NOTE
# : Remember, in C# you have to cast your output value to Object type!
# In Haskell, you have to return a data type of a `Either String Int` which is `Left "False"` for false and `Right "Well done!"` for true.
def playerRankUp(points)
  points >= 100 ? "Well done! You have advanced to the qualifying stage. Win 2 out of your next 3 games to rank up." : false
end

# Find the Integral 8kyu
# https://www.codewars.com/kata/59811fd8a070625d4c000013/train/ruby
# Create a function that finds the integral of the expression passed.
# In order to find the integral all you need to do is add one to the exponent (the second argument), and divide the coefficient by that new number (the first argument).
# In 3x^2, for example, the integral would be 1x^3 (we added 1 to the exponent, and divided the coefficient by that new number).
# integrate(3,2) // => "1x^3"
# integrate(9,5) // => "1.5x^6"
# Note that the output should be a string. The coefficient is always positive. Neither number will ever be 0.
def integrate(coefficient, exponent)
  "#{coefficient / (exponent + 1)}x^#{exponent + 1}"
end

# Age Range Compatibility Equation 8kyu
# https://www.codewars.com/kata/5803956ddb07c5c74200144e/train/ruby
# Everybody knows the classic "half your age plus seven" dating rule that a lot of people follow (including myself). It's the 'recommended' age range in which to date someone.
# minimum age <= your age <= maximum age #Task
# Given an integer (1 <= n <= 100) representing a person's age, return their minimum and maximum age range.
# This equation doesn't work when the age <= 14, so use this equation instead:
# min = age - 0.10 * age
# max = age + 0.10 * age
# You should floor all your answers so that an integer is given instead of a float (which doesn't represent age). Return your answer in the form [min]-[max]
# ##Examples:
# age = 27   =>   20-40
# age = 5    =>   4-5
# age = 17   =>   15-20
def dating_range(age)
  age <= 14 ? "#{(age - 0.10 * age).floor}-#{(age + 0.10 * age).floor}" : "#{(age / 2.0 + 7).floor}-#{(age - 7) * 2}"
end

# Define a card suit 8kyu
# https://www.codewars.com/kata/5a360620f28b82a711000047/train/ruby
# You get any card as an argument. Your task is to return a suit of this card.
# Our deck (is preloaded):
# DECK = ['2S','3S','4S','5S','6S','7S','8S','9S','10S','JS','QS','KS','AS',
#         '2D','3D','4D','5D','6D','7D','8D','9D','10D','JD','QD','KD','AD',
#         '2H','3H','4H','5H','6H','7H','8H','9H','10H','JH','QH','KH','AH',
#         '2C','3C','4C','5C','6C','7C','8C','9C','10C','JC','QC','KC','AC']
# ('3C') -> return 'clubs'
# ('3D') -> return 'diamonds'
# ('3H') -> return 'hearts'
# ('3S') -> return 'spades'
def define_suit(card)
  case card[-1]
  when "C" then "clubs"
  when "D" then "diamonds"
  when "H" then "hearts"
  when "S" then "spades"
  end
end

# Wilson primes 8kyu
# https://www.codewars.com/kata/55dc4520094bbaf50e0000cb/train/ruby
# Wilson primes satisfy the following condition. Let P represent a prime number.
# Then ((P-1)! + 1) / (P * P) should give a whole number.
# Your task is to create a function that returns true if the given number is a Wilson prime.
def am_i_wilson(p)
  [5, 13, 563].include?(p)
end

# OOP: Object Oriented Piracy 8kyu
# https://www.codewars.com/kata/54fe05c4762e2e3047000add/train/ruby
# Ahoy matey!
# You are a leader of a small pirate crew. And you have a plan. With the help of OOP you wish to make a pretty eficient system to identify ships with a heavy booty on board.
# Unfortunattely for you, people weigh a lot this days, so how do you know if a ship if full of gold and not people?
# You begin with writing a generic Ship class:
class Ship
  def initialize(draft, crew)
    @draft = draft
    @crew = crew
  end

  def is_worth_it
    @draft - @crew * 1.5 > 20
  end
end

# Localize The Barycenter of a Triangle 8kyu
# https://www.codewars.com/kata/5601c5f6ba804403c7000004/train/ruby
# The medians of a triangle are the segments that unit the vertices with the midpoint of their opposite sides.
# The three medians of a triangle intersect at the same point, called the barycenter or the centroid.
# Given a triangle, defined by the cartesian coordinates of its vertices we need to localize its barycenter or centroid.
# The function bar_triang() or barTriang or bar-triang, receives the coordinates of the three vertices A, B and C as three different arguments and outputs the coordinates of the barycenter O in an array [xO, yO]
# This is how our asked function should work: the result of the coordinates should be expressed up to four decimals, (rounded result).
# You know that the coordinates of the barycenter are given by the following formulas.
# For additional information about this important point of a triangle see at: (https://en.wikipedia.org/wiki/Centroid)
# Let's see some cases:
# bar_triang([4, 6], [12, 4], [10, 10]) ------> {8.6667, 6.6667}
# bar_triang([4, 2], [12, 2], [6, 10] ------> {7.3333, 4.6667}
# The given points form a real or a degenerate triangle but in each case the above formulas can be used.
# Enjoy it and happy coding!!
def bar_triang(p1, p2, p3)
  x = ((p1[0] + p2[0] + p3[0]) / 3.0).round(4)
  y = ((p1[1] + p2[1] + p3[1]) / 3.0).round(4)
  [x, y]
end
