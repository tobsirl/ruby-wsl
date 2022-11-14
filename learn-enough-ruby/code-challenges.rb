# Ones and Zeros 7kyu
# Given an array of ones and zeroes, convert the equivalent binary value to an integer.

# Eg: [0, 0, 0, 1] is treated as 0001 which is the binary representation of 1.

def binary_array_to_number(arr)
  arr.join.to_i
end

# Rock Paper Scissors! 8kyu
# "scissors", "paper" --> "Player 1 won!"
# "scissors", "rock" --> "Player 2 won!"
# "paper", "paper" --> "Draw!"
def rps(p1, p2)
  if p1 == 'rock' && p2 == 'scissors' || p1 == 'scissors' && p2 == 'paper' || p1 == 'paper' && p2 == 'rock'
    "Player 1 won!"
  elsif p1 == 'scissors' && p2 == 'rock' || p1 == 'paper' && p2 == 'scissors' || p1 == 'rock' && p2 == 'paper'
    "Player 2 won!"
  else
    "Draw!"
  end
end

def rps(p1, p2)
  beatmap = { 'scissors' => 'paper', 'paper' => 'rock', 'rock' => 'scissors' }

  if p1 == p2
    "Draw!"
  elsif beatmap[p1] == p2
    "Player 1 won!"
  else
    "Player 2 won!"
  end
end

# Sum Mixed Array 8kyu
# Given an array of integers as strings and numbers, return the sum of the array values as if all were numbers.

# Return your answer as a number.
def sum_mix(x)
  x.map { |v| v.to_i }.reduce(:+)
end

# Detect Pangram 6kyu
# A pangram is a sentence that contains every single letter of the alphabet at least once. 
# For example, the sentence "The quick brown fox jumps over the lazy dog" is a pangram, 
# because it uses the letters A-Z at least once (case is irrelevant).

# Given a string, detect whether or not it is a pangram. Return True if it is, False if not. Ignore numbers and punctuation.

def panagram?(string)
  string.downcase.scan(/[a-z]/).uniq.size == 26
end

def panagram?(string)
  ('a'..'z').all? { |x| string.downcase.include? (x) } 
end

# Complementary DNA 7kyu
# Deoxyribonucleic acid (DNA) is a chemical found in the nucleus of cells and carries the "instructions" for 
# the development and functioning of living organisms.

# If you want to know more: http://en.wikipedia.org/wiki/DNA

# In DNA strings, symbols "A" and "T" are complements of each other, as "C" and "G". 
# Your function receives one side of the DNA (string, except for Haskell); 
# you need to return the other complementary side. 
# DNA strand is never empty or there is no DNA at all (again, except for Haskell).
def DNA_strand(dna)
  dna.tr("ACTG", "TGAC")
end

def DNA_strand(dna)
  dna.gsub(/[ATGC]/, "A" => "T", "T" => "A", "C" => "G", "G" => "C")
end

$pairs = {'A'=>'T','T'=>'A','C'=>'G','G'=>'C'}
def DNA_strand(dna)
  dna.chars.map{ |c| $pairs[c] }.join
end

# Sum of two lowest positive integers 7kyu
# Create a function that returns the sum of the two lowest positive numbers given an array of minimum 4 positive integers. 
# No floats or non-positive integers will be passed.
def sum_two_smallest_numbers(numbers)
  numbers.sort[0] + numbers.sort[1]
end

def sum_two_smallest_numbers(numbers)
  numbers.min(2).reduce(:+)
end

def sum_two_smallest_numbers a
  a.min(2).sum
end

def sum_two_smallest_numbers(numbers)
  numbers.sort[0..1].inject(:+)
end

# Shortest Word 7kyu
# Simple, given a string of words, return the length of the shortest word(s).

# String will never be empty and you do not need to account for different data types.
def find_short(s)
  l = s.split(' ').sort_by { |word| word.length}[0].length
  return l # l: length of the shortest word
end

def find_short(s)
  s.split.map(&:size).min
end

def find_short(s)
  l = s.split.min_by(&:length).size
  return l
end

def find_short(s)
  return s.split(' ').map(&:length).min
end

# Hello, Name or World! 8kyu
# Define a method hello that returns "Hello, Name!" to a given name, or says Hello, World! if name is not given (or passed as an empty String).

# Assuming that name is a String and it checks for user typos to return a name with a first capital letter (Xxxx).
def hello(name = "")
  if name.empty?
    "Hello, World!"
  else  
    "Hello, #{name.downcase.capitalize}!"
  end
end

def hello(name='World')
  "Hello, #{name.empty? ? 'World' : name.capitalize}!"
end

def hello(name="")
  name.empty? ? "Hello, World!" : "Hello, #{name.downcase.capitalize}!"
end

# Student's Final Grade 8kyu
# 100, if a grade for the exam is more than 90 or if a number of completed projects more than 10.
# 90, if a grade for the exam is more than 75 and if a number of completed projects is minimum 5.
# 75, if a grade for the exam is more than 50 and if a number of completed projects is minimum 2.
# 0, in other cases
def final_grade(exam, projects)
  if exam > 90 || projects > 10
    100
  elsif (exam > 75 && exam <= 90) && projects >= 5 && projects < 10
    90
  elsif (exam > 50 && exam < 75) && projects >= 2
    75
  else
    0
  end
end

def final_grade(exam, projects)
  return 100 if exam > 90 || projects > 10
  return 90 if exam > 75 && projects >= 5
  return 75 if exam > 50 && projects >= 2
  0
end

def final_grade(exam, projects)
  case
  when exam > 90 || projects > 10 then 100
  when exam > 75 && projects >= 5 then 90
  when exam > 50 && projects >= 2 then 75
  else 0
  end
end

# If you can't sleep, just count sheep!! 8kyu
# If you can't sleep, just count sheep!!
# Task:
# Given a non-negative integer, 3 for example, return a string with a murmur: "1 sheep...2 sheep...3 sheep...". Input will always be valid, i.e. no negative integers.
def count_sheep(num)
  if num == 0
    return ""
  end
  
  arr = []
  (1..num).each do |i|
    arr.push("#{i} sheep...")
  end
  arr.join
end

def count_sheep(num)
  (1..num).map {|i| "#{i} sheep..."}.join
end

# Holiday VIII - Duty Free 8kyu
# The purpose of this kata is to work out just how many bottles of duty free whiskey you would have 
# to buy such that the saving over the normal high street price would effectively cover the cost of your holiday.

# You will be given the high street price (normPrice), the duty free discount (discount) and the cost of the holiday.

# For example, if a bottle cost £10 normally and the discount in duty free was 10%, 
# you would save £1 per bottle. If your holiday cost £500, the answer you should return would be 500.

# All inputs will be integers. Please return an integer. Round down.
def duty_free(price, discount, holiday_cost)
  discount_per = discount.to_f / 100
  discounted_price = discount_per * price
  result = holiday_cost / discounted_price
  result.floor
end

def duty_free(price, discount, holiday_cost)
  ( holiday_cost/(price*discount/100.0) ).floor
end

# All Star Code Challenge #18 8kyu
# Create a function that accepts 2 string arguments and returns an integer of the count of 
# occurrences the 2nd argument is found in the first one.

# If no occurrences can be found, a count of 0 should be returned.
def str_count(word, letter)
  word.count(letter)
end

# Jaden Casing Strings 7kyu
# Jaden Smith, the son of Will Smith, is the star of films such as 
# The Karate Kid (2010) and After Earth (2013). Jaden is also known for 
# some of his philosophy that he delivers via Twitter. When writing on Twitter, 
# he is known for almost always capitalizing every word. For simplicity, 
# you'll have to capitalize each word, check out how contractions are expected to be in the example below.

# Your task is to convert strings to how they would be written by Jaden Smith. 
# The strings are actual quotes from Jaden Smith, but they are not capitalized in the same way he originally typed them.
class String
  def toJadenCase
    self.split.map { |word| word.capitalize }.join(" ")
  end
end

class String
  def toJadenCase
    self.split.map(&:capitalize).join(" ")
  end
end

class String
  def toJadenCase
    split.map(&:capitalize).join(' ')
  end
end

# What is between? 8kyu
# Complete the function that takes two integers (a, b, where a < b)
# and return an array of all integers between the input parameters, including them.
def between(a, b)
  (a..b).to_a
end

def between(a, b)
  [*a..b]
end

# L1: Set Alarm 8kyu
# Write a function named setAlarm which receives two parameters. 
# The first parameter, employed, is true whenever you are employed and the second parameter, 
# vacation is true whenever you are on vacation.

# The function should return true if you are employed and not on vacation 
# (because these are the circumstances under which you need to set an alarm). 
# It should return false otherwise.
def set_alarm(employed, vacation)
  employed && !vacation 
end

# No zeros for heros 8kyu
# Numbers ending with zeros are boring.
# They might be fun in your world, but not here.
# Get rid of them. Only the ending ones.
def no_boring_zeros(num)
  num.to_s.gsub(/0+$/, '').to_i
end

# Exclamation marks series #11: Replace all vowel to exclamation mark in the sentence 8kyu
# Replace all vowel to exclamation mark in the sentence. aeiouAEIOU is vowel.
def replace(s)
  s.tr('aeiouAEIOU', '!')
end

def replace(s)
  s.gsub(/([aeiou])/i, '!') 
end

# Transportation on vacation 8kyu
# After a hard quarter in the office you decide to get some rest on a vacation. 
# So you will book a flight for you and your girlfriend and try to leave all the mess behind you.
# You will need a rental car in order for you to get around in your vacation. 
# The manager of the car rental makes you some good offers.
# Every day you rent the car costs $40. If you rent the car for 7 or more days, 
# you get $50 off your total. Alternatively, if you rent the car for 3 or more days, you get $20 off your total.
def rental_car_cost(d)
  total = d * 40
    if d >= 7 
      total - 50
    elsif d >= 3
      total - 20
    else
      d * 40
    end
end

def rental_car_cost(d)
  return d * 40 if d < 3
  return d * 40 - 20 if d < 7
  return d * 40 - 50
end

def rental_car_cost(days)
  discount = 0
  discount = 20 if days >= 3
  discount = 50 if days >= 7
  days * 40 - discount
end

# Third Angle of a Triangle 8kyu
# You are given two interior angles (in degrees) of a triangle.
# Write a function to return the 3rd.
def other_angle(a, b)
  ((a + b) - 180).abs
end

def other_angle(a, b)
  180 - a - b
end

# Sum of Minimums! 7kyu
# Given a 2D ( nested ) list ( array, vector, .. ) of size m * n, 
# your task is to find the sum of the minimum values in each row.
def sum_of_minimums(numbers)
  min_numbers = numbers.map { |arr| arr.min }
  min_numbers.reduce(:+)
end

def sum_of_minimums(numbers)
  numbers.sum(&:min)
end

def sum_of_minimums(numbers)
  numbers.map(&:min).sum
end

def sum_of_minimums(numbers)
  numbers.sum { |x| x.min }
end

# Highest and Lowest 7kyu
# In this little assignment you are given a string of space separated numbers, 
# and have to return the highest and lowest number.
def high_and_low(numbers)
  min_number = numbers.split(' ').map(&:to_i).sort.min
  max_number = numbers.split(' ').map(&:to_i).sort.max
  "#{max_number} #{min_number}"
end

def high_and_low(numbers)
  numbers.split.map(&:to_i).minmax.reverse.join(' ')
end

def high_and_low(numbers)
  numbers = numbers.split.map(&:to_i)
  "#{numbers.max} #{numbers.min}"
end

def high_and_low(numbers)
  a = numbers.split.map(&:to_i).sort
  "#{a.last} #{a.first}"
end

def high_and_low(numbers)
  numbers.split.minmax_by(&:to_i).reverse.join(' ')
end

# Difference of Volumes of Cuboids 8kyu
# In this simple exercise, you will create a program that will take two lists of integers,
# a and b. Each list will consist of 3 positive integers above 0, 
# representing the dimensions of cuboids a and b. 
# You must find the difference of the cuboids' volumes regardless of which is bigger.
def find_difference(a, b)
  a_volume = a[0] * a[1] * a[2]
  b_volume = b[0] * b[1] * b[2]
  (a_volume - b_volume).abs
end

def find_difference(a, b)
  (a.inject(:*) - b.inject(:*)).abs
end

# Add Length 8kyu
# What if we need the length of the words separated by a space to be added at the end of that same word and have it returned as an array?
def add_length(str)
  arr = []
  str.split.each do |word|
    arr.push("#{word} #{word.length}")
  end
  arr
end

def add_length(str)
  str.split.map { |word| "#{word} #{word.length}" }
end

def add_length(str)
  str.split.map { |s| "#{s} #{s.size}" }
end

# What's the real floor? 8kyu
def get_real_floor(n)
  if n >= 14
    n - 2
  elsif n >= 1 && n < 13
    n - 1
  else
    n
  end
end

def get_real_floor(n)
  return n if n <= 0 
  return n-1 if n>=1 && n<=12
  return n-2 if n>=14
end 

# Odd or Even? 7kyu
# Given a list of integers, determine whether the sum of its elements is odd or even.

# Give your answer as a string matching "odd" or "even".

# If the input array is empty consider it as: [0] (array with a zero).
def odd_or_even(array)
  array.sum % 2 == 0 ? "even" : "odd"
end

def odd_or_even(array)
  array.sum.even? ? 'even' : 'odd'
end

# Enumerable Magic - Does My List Include This? 8kyu
# Create a method that accepts a list and an item, and returns true if the item belongs to the list, otherwise false.
def include? array, item
  array.include? item
end

def include? array, item
  array.any? { |x| x == item}
end

# Find the odd int 6kyu
# Given an array of integers, find the one that appears an odd number of times.

# There will always be only one integer that appears an odd number of times.
def find_it(seq)
  freq = Hash.new(0)
  seq.each { |x| freq[x] += 1 }
  freq.map{ |key, value| return key if value.odd? }
end

def find_it(seq)
  seq.detect { |n| seq.count(n).odd? }
end

def find_it(seq)
  seq.reduce(:^)
end

def find_it(seq)
  seq.uniq.each do |val|
    return val if seq.count(val).odd?
  end
end

def find_it(seq)
  seq.find{|c| seq.count(c).odd? }
end

# Grasshopper - Terminal game move function 8kyu
# In this game, the hero moves from left to right. The player rolls the dice and moves the number of spaces indicated by the dice two times.

# Create a function for the terminal game that takes the current position of the hero and the roll (1-6) and return the new position.
def move (position, roll)
  position + (roll * 2)
end

# Sort the odd 6kyu
# You will be given an array of numbers. You have to sort the odd numbers in ascending order while leaving the even numbers at their original positions.
def sort_array(source_array)
  odd_sorted = source_array.select(&:odd?).sort
  source_array.map { |input| input.even? ? input : odd_sorted.shift }
end

# Reversing Words in a String 8kyu
# You need to write a function that reverses the words in a given string. A word can also fit an empty string.
def reverse(string)
  string.split.reverse.join(' ')
end

# Find the stray number 7kyu
# You are given an odd-length array of integers, in which all of them are the same, except for one single number.

# Complete the method which accepts such an array, and returns that single different number.
def stray (numbers)
  count = Hash.new(0)
  numbers.each { |n| count[n] += 1  }
  most_common_number = count.sort_by { |k, v| v}.last[0]
  numbers.find { |n| n != most_common_number }
end

def stray(numbers)
  most_common_number = numbers.max_by { |n| numbers.count(n) }
  numbers.find { |n| n != most_common_number }
end

def stray (numbers)
  numbers.reduce(&:^)
end

