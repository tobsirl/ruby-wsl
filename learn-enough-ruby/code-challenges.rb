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

# Invert values 8kyu
# Given a set of numbers, return the additive inverse of each. Each positive becomes negatives, and the negatives become positives.
def invert(list)
  list.map { |n| -n }
end

def invert(list)
  list.map(&:-@)
end

# Break camelCase 6kyu
# Complete the solution so that the function will break up camel casing, using a space between words.
def solution(string)
  string.split(/(?=[A-Z])/).join(' ')
end

def solution(string)
  string.gsub(/(?=[A-Z])/, ' ')
end

def solution(string)
  string.chars.map { |s| s == s.downcase ? s : " #{s}" }.join
end

# Determine offspring sex based on genes XX and XY chromosomes 8kyu
# Determine if the sex of the offspring will be male or female based on the X or Y chromosome present in the male's sperm.
# If the sperm contains the X chromosome, return "Congratulations! You're going to have a daughter."; If the sperm contains the Y chromosome, return "Congratulations! You're going to have a son.";
def chromosome_check(sperm)
  if sperm.include?('Y')
    "Congratulations! You're going to have a son."
  else
    "Congratulations! You're going to have a daughter."
  end
end

def chromosome_check(sperm)
  "Congratulations! You're going to have a #{sperm.include?('Y') ? 'son' : 'daughter'}."
end

def chromosome_check(sperm)
  return sperm == "XY" ? "Congratulations! You're going to have a son." : "Congratulations! You're going to have a daughter.";
end

# Exclusive "or" (xor) Logical Operator 8kyu
# Since we cannot define keywords in Javascript (well, at least I don't know how to do it), 
# your task is to define a function xor(a, b) where a and b are the two expressions to be evaluated. 
# Your xor function should have the behaviour described above, returning true if exactly one of the 
# two expressions evaluate to true, false otherwise.
def xor(a,b)
  a == b ? false : true
end

def xor(a,b)
  a ^ b
end

def xor(a,b)
  a!=b
end

# Sort and Star 8kyu
# You will be given a list of strings. You must sort it alphabetically (case-sensitive, and based on the ASCII values
# of the chars) and then return the first value.

# The returned value must be a string, and have "***" between each of its letters.
def two_sort(s)
  s.sort.first.chars.join("***")
end

def two_sort(s)
  s.min.chars.join('***')
end

# Beginner Series #2 Clock 8kyu
# Your task is to write a function which returns the time since midnight in milliseconds.
def past(h, m, s)
  ((h * 3600) + (m * 60) + s) * 1000
end

def past(h, m, s)
  (h * 3600 + m * 60 + s) * 1000
end

# Multiple of index 8kyu
# Return a new array consisting of elements which are multiple of their own index in input array (length > 1).
def multiple_of_index arr
  arr.filter.with_index { |el, idx| idx == 0 ? nil : el % idx == 0 }
end 

def multiple_of_index a
  a.select.with_index { |n, i| i != 0 && n % i == 0 }
end

def multiple_of_index arr
  arr.select.with_index {|val, index| index.nonzero? && val % index == 0 }
end

def multiple_of_index(xs)
  xs.select.with_index { |x, i| i.positive? && x % i == 0 }
end

def multiple_of_index(array)
  array.select.with_index { |x,i| x % i == 0 unless i.zero?}
end

# Find the Remainder 8kyu
# Write a function that accepts two integers and returns the remainder of dividing the larger value by the smaller value.
# Division by zero should return an empty value.
def remainder(a, b)
  if a == 0 || b == 0
    return nil
  end
  
  if a > b
    a % b
  else
    b % a
  end
end

# Replace With Alphabet Position 6kyu
# In this kata you are required to, given a string, replace every letter with its position in the alphabet.
# If anything in the text isn't a letter, ignore it and don't return it.
def alphabet_position(text)
  letter_to_number = ('a'..'z').zip(1..26).to_h 
  text.downcase.each_char.map {|c| letter_to_number[c] }.compact.join(' ')
end

def alphabet_position(text)
  text.gsub(/[^a-z]/i, '').chars.map{ |c| c.downcase.ord - 96 }.join(' ')
end

def alphabet_position(text)
  result = ''
  text.split('').each do |c|
    case c.downcase
      when 'a'
        result += '1 '
      when 'b'
        result += '2 '
      when 'c'
        result += '3 '
      when 'd'
        result += '4 '
      when 'e'
        result += '5 '
      when 'f'
        result += '6 '
      when 'g'
        result += '7 '
      when 'h'
        result += '8 '
      when 'i'
        result += '9 '
      when 'j'
        result += '10 '
      when 'k'
        result += '11 '
      when 'l'
        result += '12 '
      when 'm'
        result += '13 '
      when 'n'
        result += '14 '
      when 'o'
        result += '15 '
      when 'p'
        result += '16 '
      when 'q'
        result += '17 '
      when 'r'
        result += '18 '
      when 's'
        result += '19 '
      when 't'
        result += '20 '
      when 'u'
        result += '21 '
      when 'v'
        result += '22 '
      when 'w'
        result += '23 '
      when 'x'
        result += '24 '
      when 'y'
        result += '25 '
      when 'z'
        result += '26 '
      else
        result = result
    end
  end
  result[0..-2]
end

# How old will I be in 2099? 8kyu
# Provide output in this format: For dates in the future: "You are ... year(s) old." 
# For dates in the past: "You will be born in ... year(s)." 
# If the year of birth equals the year requested return: "You were born this very year!"
def calculate_age(year_of_birth, current_year)
  if year_of_birth == current_year
    "You were born this very year!"
  elsif current_year > year_of_birth
    "You are #{current_year - year_of_birth} year#{current_year - year_of_birth == 1 ? nil : "s"} old."
  elsif current_year < year_of_birth
    "You will be born in #{year_of_birth - current_year} year#{year_of_birth - current_year == 1 ? nil : "s"}."
  end
end

# Two Sum 6kyu
# Write a function that takes an array of numbers (integers for the tests) and a target number. 
# It should find two different items in the array that, when added together, give the target value. 
# The indices of these items should then be returned in a tuple / list (depending on your language) like so: (index1, index2).
# For the purposes of this kata, some tests may have multiple answers; any valid solutions will be accepted.
# The input will always be valid (numbers will be an array of length 2 or greater, and all of the items will be numbers; 
# target will always be the sum of two different items from that array).
def two_sum(numbers, target)
  (0...numbers.length).each do |i|
    (i+1...numbers.length).each do |j|
      return [i, j] if numbers[i] + numbers[j] == target
    end
  end
end

# Duplicate Encoder 6kyu
# The goal of this exercise is to convert a string to a new string where each character in the new string is "(" 
# if that character appears only once in the original string, or ")" 
# if that character appears more than once in the original string. 
# Ignore capitalization when determining if a character is a duplicate.
def duplicate_encode(word)
  word.downcase!
  arr_of_letters = word.split("")
  
  duplicates = Hash.new(0)
  arr_of_letters.each { |element| duplicates[element] += 1 }
  
  arr_of_letters.collect! {|x| duplicates[x] > 1 ? ")" : "("}.join
end

# Consecutive Strings 6kyu
# You are given an array(list) strarr of strings and an integer k. 
# Your task is to return the first longest string consisting of k consecutive strings taken in the array.
def longest_consec(strarr, k)
  return "" if k < 1
  return "" if strarr.length < k
  
  return strarr.each_cons(k).map(&:join).max_by(&:size)
end

def longest_consec(strarr, k)
  return "" unless k.between?(1, strarr.length)
  strarr.each_cons(k).map(&:join).max_by(&:length) || ""
end

def longest_consec(strarr, k)
  k > strarr.size || k <= 0 ? '' : strarr.each_cons(k).map(&:join).max_by(&:size)
end

def longest_consec(strarr, k)
  return "" if strarr.length == 0 || k > strarr.length || k <= 0
  
    longest_string = ""
    strarr.each_index do |i|
      str = strarr[i...i+k].join
      longest_string = str if str.length > longest_string.length
    end
    longest_string
end

# altERnaTIng cAsE <=> ALTerNAtiNG CaSe 8kyu
# Define String.prototype.toAlternatingCase (or a similar function/method such as to_alternating_case/toAlternatingCase/ToAlternatingCase 
# in your selected language; see the initial solution for details) such that each lowercase letter becomes uppercase and each uppercase 
# letter becomes lowercase. 
class String
  def to_alternating_case
    swapcase
  end
end

# Find the unique number 6kyu
def find_uniq(arr)
  return nil if arr.size < 3
  if arr[0] != arr[1]
    return arr[1] == arr[2] ? arr[0] : arr[1]
  end
  arr.each_cons(2) { |x, y| return y if y != x }
end

def find_uniq(arr)
  arr.uniq.each { |x| return x if arr.count(x) == 1 }
end

def find_uniq(arr)
  arr.uniq.min_by { |n| arr.count(n) }
end

# Factorial 7kyu
def factorial(n)
  return 0 if n < 0
  
  if n <= 1
        1
    else
        n * factorial(n - 1)
    end
end

def factorial(n)
  (1..n).reduce(1,:*)
end

def factorial(n)
  n < 2 ? 1 : n * factorial(n-1)
end

# Century From Year 8kyu
# The first century spans from the year 1 up to and including the year 100, the second century - from the year 101 up to and including the year 200, etc.
def century(year)
  return 1 if year.to_s.length < 4
  year.to_s[year.to_s.length - 2, 2].to_i > 0 ? year.to_s[0..1].to_i + 1 : year.to_s[0..1].to_i  
end

def century(year)
  if (year % 100) == 0
      year/100
    else 
      (year - (year % 100))/100 + 1
    end  
 end

def century(year)
  ( year / 100.0 ).ceil
end

# Regex validate PIN code 7kyu
# ATM machines allow 4 or 6 digit PIN codes and PIN codes cannot contain anything but exactly 4 digits or exactly 6 digits.
# If the function is passed a valid PIN string, return true, else return false.
def validate_pin(pin)
  pin.match(/\A\d{4}\z|\A\d{6}\z/) ? true : false
end

# Anagram Detection 7kyu
# Write a function isAnagram to return true if the two words contain the same letters.
def is_anagram(test, original)
  test.downcase.chars.sort == original.downcase.chars.sort
end

# Remove anchor from URL 7kyu
# Complete the function/method so that it returns the url with anything after the anchor (#) removed.
def remove_url_anchor(url)
  url.split("#").first
end

# Count the divisors of a number 7kyu
# Count the number of divisors of a positive integer n.
def divisors(n)
  (1..n).count { |x| n % x == 0 }
end

# Regular Ball Super Ball 8kyu
# Create a class Ball. Ball objects should accept one argument for "ball type" when instantiated.
# If no arguments are given, ball objects should instantiate with a "ball type" of "regular."
class Ball
  attr_accessor :ball_type
  
  def initialize(ball_type = "regular")
    @ball_type = ball_type
  end
end

# Unique In Order 6kyu
# Implement the function unique_in_order which takes as argument a sequence and 
# returns a list of items without any elements with the same value next to each other and 
# preserving the original order of elements.
def unique_in_order(iterable)
  iterable = iterable.split("") if iterable.is_a? String
  iterable.chunk(&:itself).map(&:first)
end

def unique_in_order(iterable)
  (iterable.is_a?(String) ? iterable.chars : iterable).chunk { |x| x }.map(&:first)
end

# Printer Errors 7kyu
# In a factory a printer prints labels for boxes. For one kind of boxes the printer has to use colors which, for the sake of simplicity, are named with letters from a to m.
def printer_error(s)
  "#{s.count("n-z")}/#{s.length}"
end

# Beginner Series #3 Sum of Numbers
# Given two integers a and b, which can be positive or negative, find the sum of all the numbers between including them too and return it.
# Note: a and b are not ordered!
def get_sum(a,b)
  return 0 if a == b
  a, b = b, a if a > b
  (a..b).reduce(:+)
end

def get_sum(a,b)
  return a < b ? (a..b).reduce(:+) : (b..a).reduce(:+) 
end

# Remove the minimum 7kyu
# Given an array of integers, remove the smallest value. Do not mutate the original array/list. 
# If there are multiple elements with the same value, remove the one with a lower index. 
# If you get an empty array/list, return an empty array/list.
# Don't change the order of the elements that are left.
def remove_smallest(numbers)
  numbers.delete_at(numbers.index(numbers.min)) unless numbers.empty?
  numbers
end

# How many stairs will Suzuki climb in 20 years? 8kyu
# Suzuki is a monk who climbs a large staircase to the monastery as part of a ritual. 
# Some days he climbs more stairs than others depending on the number of students he must train in the morning. 
# He is curious how many stairs might be climbed over the next 20 years and has spent a year marking down his daily progress.
# The sum of all the stairs logged in a year will be used for estimating the number he might climb in 20.
# 20_year_estimate = one_year_total * 20
# You will receive the following data structure representing the stairs Suzuki logged in a year.
# stairs = [sunday,monday,tuesday,wednesday,thursday,friday,saturday]
# Make the function stairs_in_20(stairs) return the 20 year estimate of the stairs climbed using the formula above.
def stairs_in_20(stairs)
  stairs.flatten.reduce(:+) * 20
end

# N-th Power 8kyu
# This kata is from check py.checkio.org
# You are given an array with positive numbers and a non-negative number N. 
# You should find the N-th power of the element in the array with the index N. 
# If N is outside of the array, then return -1. Don't forget that the first element has the index 0.
def index(array, n)
  array[n] ** n rescue -1
end

# Flatten and sort an array 7kyu
# Given a two-dimensional array of integers, return the flattened version of the array with all the integers in the sorted (ascending) order.
def flatten_and_sort(array)
  array.flatten.sort
end

# Return the day 8kyu
# Complete the function which returns the weekday according to the input number:
def what_day(n)
  case n
    when 1 then "Sunday"
    when 2 then "Monday"
    when 3 then "Tuesday"
    when 4 then "Wednesday"
    when 5 then "Thursday"
    when 6 then "Friday"
    when 7 then "Saturday"
    else "Wrong, please enter a number between 1 and 7"
  end
end

# Multiplication table for number 8kyu
# Your goal is to return multiplication table for number that is always an integer from 1 to 10.
def multi_table(number)
  (1..10).map { |i| "#{i} * #{number} = #{i*number}" }.join("\n")
end

# Build Tower 6kyu
# Build a pyramid-shaped tower, as an array/list of strings, 
# given a positive integer number of floors. A tower block is represented with "*" character.
def tower_builder(n_floors)
  (1..n_floors).map { |i| "*" * (2*i-1) }.map { |i| i.center(2*n_floors-1) }
end

# USD => CNY 8kyu
# Create a function that converts US dollars (USD) to Chinese Yuan (CNY) . The input is the amount of USD as an integer, 
# and the output should be a string that states the amount of Yuan followed by 'Chinese Yuan'
# The conversion rate you should use is 6.75 CNY for every 1 USD. 
# All numbers should be represented as a string with 2 decimal places. (e.g. "21.00" NOT "21.0" or "21")
def usdcny(usd)
  "#{sprintf('%.2f', usd * 6.75)} Chinese Yuan"
end

# Welcome to the City 8kyu
# Create a method sayHello/say_hello/SayHello that takes as input a name, city, and state to welcome a person. 
# Note that name will be an array consisting of one or more values that should be joined together with one space between each, 
# and the length of the name array in test cases will vary.
# This example will return the string Hello, John Smith! Welcome to Phoenix, Arizona!
def say_hello(name, city, state)
  "Hello, #{name.join(" ")}! Welcome to #{city}, #{state}!"
end

# I love you, a little , a lot, passionately ... not at all 8kyu
# Who remembers back to their time in the schoolyard, when girls would take a flower and tear its petals, 
# saying each of the following phrases each time a petal was torn:
# 1. "I love you"
# 2. "a little"
# 3. "a lot"
# 4. "passionately"
# 5. "madly"
# 6. "not at all"
# If there are more than 6 petals, you start over with "I love you" for 7 petals, "a little" for 8 petals and so on.
# Your goal in this kata is to determine which phrase the girls would say at the last petal for a flower of a given number of petals. 
# The number of petals is always greater than 0.
def how_much_i_love_you(nb_petals)
  case nb_petals % 6
    when 1 then
      "I love you"
    when 2 then
      "a little"
    when 3 then
      "a lot"
    when 4 then
      "passionately"
    when 5 then
      "madly"
    when 0 then
      "not at all"
  end
end

# Alternate capitalization 7kyu
# Given a string, capitalize the letters that occupy even indexes and odd indexes separately, 
# and return as shown below. Index 0 will be considered even.
# For example, capitalize("abcdef") = ['AbCdEf', 'aBcDeF']. See test cases for more examples.
# The input will be a lowercase string with no spaces.
def capitalize(s)
  [s.chars.map.with_index { |c, i| i.even? ? c.upcase : c }.join, s.chars.map.with_index { |c, i| i.odd? ? c.upcase : c }.join]
end

# Title Case 6kyu
# A string is considered to be in title case if each word in the string is either (a) capitalised 
# (that is, only the first letter of the word is in upper case) or (b) considered to be an exception 
# and put entirely into lower case unless it is the first word, which is always capitalised.
# Write a function that will convert a string into title case, given an optional list of exceptions (minor words). 
# The list of minor words will be given as a string with each word separated by a space. 
# Your function should ignore the case of the minor words string -- it should behave in the same way even if the case of the minor 
# word string is changed.
def title_case(title, minor_words = '')
  title.capitalize.split.map { |word| minor_words.downcase.split.include?(word) ? word : word.capitalize }.join(' ')
end

# Lario and Muigi Pipe Problem 8kyu
# #Issue Looks like some hoodlum plumber and his brother has been running around and damaging your stages again.
# The pipes connecting your level's stages together need to be fixed before you recieve any more complaints.
# #Task Given the a list of numbers, return the list so that the values increment by 1 for each index up to the maximum value.
# #Example:
# Input: 1,3,5,6,7,8
# Output: 1,2,3,4,5,6,7,8
def pipe_fix(numbers)
  (numbers.min..numbers.max).to_a
end

# Sum of numbers from 0 to N 7kyu
# We want to generate a function that computes the series starting from 0 and ending until the given number.
class SequenceSum
  def self.show_sequence(n)
    (n < 0) ? "#{n}<0" : (n == 0) ? "0=0" : "#{(0..n).to_a.join("+")} = #{(0..n).to_a.sum}"
  end
end

# Grasshopper - Terminal game combat function 8kyu
# Create a combat function that takes the player's current health and the amount of damage recieved, 
# and returns the player's new health. Health can't be less than 0.
def combat(health, damage)
  health - damage > 0 ? health - damage : 0
end

# Even numbers in an array 7kyu
# Given an array of numbers, return a new array of length number containing the last even numbers from the original array (in the same order). 
# The original array will be not empty and will contain at least "number" even numbers.
def even_numbers(arr, n)
  arr.select(&:even?).last(n)
end

# 5 without numbers ! 8kyu
# Write a function that always returns 5
def unusual_five
  "five!".length
end

# Row Weights 7kyu
# Scenario
# Several people are standing in a row divided into two teams. The first person goes into team 1, the second goes into team 2,
# the third goes into team 1, and so on.
# Task
# Given an array of positive integers (the weights of the people), return a new array/tuple of two integers,
# where the first one is the total weight of team 1, and the second one is the total weight of team 2.
def row_weights(array)
  array.each_slice(2).map { |a, b| [a.to_i, b.to_i] }.transpose.map(&:sum)
end

# Isograms 7kyu
# An isogram is a word that has no repeating letters, consecutive or non-consecutive.
# Implement a function that determines whether a string that contains only letters is an isogram.
# Assume the empty string is an isogram. Ignore letter case.
def is_isogram(string)
  string.downcase.chars.uniq == string.downcase.chars
end

# Sum of sequence 7kyu
# Your task is to make function, which returns the sum of a sequence of integers.
# The sequence is defined by 3 non-negative values: begin, end, step.
# If begin value is greater than the end, function should returns 0
def sequence_sum(begin_number, end_number, step)
  (begin_number..end_number).step(step).sum
end

# Find the next perfect square! 7kyu
# You might know some pretty large perfect squares. But what about the NEXT one?
# Complete the findNextSquare method that finds the next integral perfect square after the one passed as a parameter.
# Recall that an integral perfect square is an integer n such that sqrt(n) is also an integer.
# If the parameter is itself not a perfect square then -1 should be returned. You may assume the parameter is positive.
def find_next_square(sq)
  (Math.sqrt(sq) % 1).zero? ? (Math.sqrt(sq) + 1)**2 : -1
end

# Formating decimal places #0 8kyu
# Each floating-point number should be formatted that only the first two decimal places are returned.
# You don't need to check whether the input is a valid number because only valid numbers are used in the tests.
def two_decimal_places(n)
  n.round(2)
end

# Bumps in the Road 7kyu
# Your car is old, it breaks easily. The shock absorbers are gone and you think it can handle about 15 more bumps before it dies totally.
# Unfortunately for you, your drive is very bumpy! Given a string showing either flat road ("_") or bumps ("n"),
# work out if you make it home safely. 15 bumps or under, return "Woohoo!", over 15 bumps return "Car Dead".
def bumps(road)
  road.count('n') > 15 ? 'Car Dead' : 'Woohoo!'
end

# Exclamation marks series #2: Remove all exclamation marks from the end of sentence 8kyu
# Remove all exclamation marks from the end of sentence.
def remove(s)
  s.gsub(/!+$/, '')
end

# Find the position! 8kyu
# When provided with a letter, return its position in the alphabet.
# Input :: "a"
# Ouput :: "Position of alphabet: 1"
def position(alphabet)
  "Position of alphabet: #{alphabet.ord - 96}"
end

# The highest profit wins! 7kyu
# Story
# Ben has a very simple idea to make some profit: he buys something and sells it again. 
# Of course, this wouldn't give him any profit at all if he was simply to buy and sell it at the same price. 
# Instead, he's going to buy it for the lowest possible price and sell it at the highest.
# Task
# Write a function that returns both the minimum and maximum number of the given list/array.
def min_max(lst)
  [lst.min, lst.max]
end

# Bin to Decimal 8kyu
# Complete the function which converts a binary number (given as a string) to a decimal number.
def bin_to_decimal(str)
  str.to_i(2)
end

# Round up to the next multiple of 5 7kyu
# Given an integer as input, can you round it to the next (meaning, "higher") 5?
def round_to_next5(n)
  n % 5 == 0 ? n : n + (5 - n % 5)
end

# Two to One 7kyu
# Take 2 strings s1 and s2 including only letters from ato z. Return a new sorted string, the longest possible, containing distinct letters,
# each taken only once - coming from s1 or s2.
def longest(s1, s2)
  (s1 + s2).chars.uniq.sort.join
end

# Convert to Binary 8kyu
# Given a non-negative integer n, write a function to_binary/ToBinary which returns that number in a binary format.
def to_binary(n)  
  n.to_s(2).to_i
end

# String incrementer 5kyu
# Your job is to write a function which increments a string, to create a new string.
# If the string already ends with a number, the number should be incremented by 1.
# If the string does not end with a number. the number 1 should be appended to the new string.
def increment_string(input)
  input.sub(/\d*$/) { |n| n.empty? ? 1 : n.succ }
end

# Vowel remover 8kyu
# Create a function called shortcut to remove all the lowercase vowels in a given string.
def shortcut(s)
  s.delete('aeiou')
end

# Largest pair sum in array 7kyu
# Given a sequence of numbers, find the largest pair sum in the sequence.
def largest_pair_sum(numbers)
  numbers.sort.last(2).sum
end

# Mumbling 7kyu
# This time no story, no theory. The examples below show you how to write function accum:
def accum(s)
  s.chars.map.with_index { |c, i| c.upcase + c.downcase * i }.join('-')
end

# Count the Digit 7kyu
# Take an integer n (n >= 0) and a digit d (0 <= d <= 9) as an integer.
# Square all numbers k (0 <= k <= n) between 0 and n.
# Count the numbers of digits d used in the writing of all the k**2.
# Call nb_dig (or nbDig or ...) the function taking n and d as parameters and returning this count.
def nb_dig(n, d)
  (0..n).map { |i| i**2 }.join.count(d.to_s)
end

# The Vowel Code 6kyu
# Step 1: Create a function called encode() to replace all the lowercase vowels in a given string with numbers according to the following pattern:
def encode(string)
  string.tr('aeiou', '12345')
end

# Step 2: Now create a function called decode() to turn the numbers back into vowels according to the same pattern shown above.
def decode(string)
  string.tr('12345', 'aeiou')
end

# Your order, please 6kyu
# Your task is to sort a given string. Each word in the string will contain a single number. This number is the position the word should have in the result.
def order(words)
  words.split.sort_by { |w| w[/\d/] }.join(' ')
end

# A Strange Trip to the Market 8kyu
def is_lock_ness_monster(string)
  string.include?("tree fiddy") || string.include?("3.50") || string.include?("three fifty")
end

def is_lock_ness_monster(string)
  ["tree fiddy", "3.50", "three fifty"].any? { |t| string.include? t } 
end

# Simple validation of a username with regex 8kyu
# Write a simple regex to validate a username. Allowed characters are:
# lowercase letters, numbers, underscore
# Length should be between 4 and 16 characters (both included).
# Should return true if the username is valid, false otherwise.
def validate_usr(username)
  username =~ /^[a-z0-9_]{4,16}$/ ? true : false
end

def validate_usr(username)
  username.match?(/^[a-z\d_]{4,16}$/)
end

def validate_usr(username)
  !!username[/\A[a-z0-9_]{4,16}\z/]
end

# Grasshopper - Combine strings 8kyu
# Create a function named combineNames(combine_names in python, ruby) that accepts two parameters (first and last name).
# The function should return the full name.
def combine_names(first_name, last_name)
  "#{first_name} #{last_name}"
end

# Sorted? yes? no? how? 7kyu
# Complete the method which accepts an array of integers, and returns one of the following:
# "yes, ascending" - if the numbers in the array are sorted in an ascending order
# "yes, descending" - if the numbers in the array are sorted in a descending order
# "no" - otherwise
def is_sorted_and_how(arr)
  arr == arr.sort ? "yes, ascending" : arr == arr.sort.reverse ? "yes, descending" : "no"
end

# Regex Password Validation 5kyu
# You need to write regex that will validate a password to make sure it meets the following criteria:
# At least six characters long
# contains a lowercase letter
# contains an uppercase letter
# contains a number
# only contains alphanumeric characters(note that '_' is not alphanumeric)
def validate(password)
  password =~ /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{6,}$/
end

# Summing a number's digits 7kyu
# Write a function named sumDigits which takes a number as input and returns the sum of the absolute value of each of the number's decimal digits.
def sumDigits(number)
  number.abs.to_s.chars.map(&:to_i).sum
end

# Remove First and Last Character Part Two
# This is a spin off of my first kata. You are given a list of character sequences as a comma separated string.
# Write a function which returns another string containing all the character sequences except the first and the last ones, separated by spaces.
# If the input string is empty, or the removal of the first and last items would cause the string to be empty, return a null value.
def array(string)
  string.split(',').slice(1..-2).join(' ') if string.split(',').length > 2
end

# Speed Control 7kyu
# In John's car the GPS records every s seconds the distance travelled from an origin (distances are measured in an arbitrary but consistent unit).
# For example, below is part of a record with s = 15:
# # time  distance
# x = [0.0, 0.19, 0.5, 0.75, 1.0, 1.25, 1.5, 1.75, 2.0, 2.25]
# The sections are:
# 0.0-0.19, 0.19-0.5, 0.5-0.75, 0.75-1.0, 1.0-1.25, 1.25-1.50, 1.5-1.75, 1.75-2.0, 2.0-2.25
# We can calculate John's average hourly speed on every section and we get:
# [47.27, 72.24, 72.24, 72.24, 72.24, 72.24, 72.24, 72.24, 72.24]
# Given s and x the task is to return as an integer the *floor* of the maximum average speed per hour obtained on the sections of x.
# If x length is less than or equal to 1 return 0 since the car didn't move.
def gps(s, x)
  return 0 if x.length <= 1
  (x.each_cons(2).map { |a, b| (3600 * (b - a) / s).floor }.max)
end

# JavaScript Array Filter 7kyu
#  The solution would work like the following:
# getEvenNumbers([2,4,5,6]) // should == [2,4,6]
def get_even_numbers(arr)
  arr.select(&:even?)
end

# Power of two 7kyu
# Complete the function that determines if a given non-negative integer is a power of two.
def power_of_two?(x)
  x.to_s(2).count('1') == 1
end

# Printing Array elements with Comma delimiters 8kyu
def printArray(array)
  array.join(',')
end

# Find the middle element 7kyu
# As a part of this Kata, you need to create a function that when provided with a triplet, returns the index of the numerical element that lies between the other two elements.
# The input to the function will be an array of three distinct numbers (Haskell: a tuple).
def gimme(input_array)
  input_array.index(input_array.sort[1])
end

# Validate code with simple regex 8kyu
# Basic regex tasks. Write a function that takes in a numeric code of any length. The function should check if the code begins with 1, 2, or 3 and return true if so. Return false otherwise.
def validate_code(code)
  code.to_s =~ /^[123]/ ? true : false
end

# Greet Me 7kyu
# Write a method that takes one argument as name and then greets that name, capitalized and ends with an exclamation point.
def greet(name)
  "Hello #{name.capitalize}!"
end

# Tip Calculator 8kyu
# Complete the function, which calculates how much you need to tip based on the total amount of the bill and the service.
def calculate_tip(amount, rating)
  case rating.downcase
  when "terrible"
    0
  when "poor"
    (amount * 0.05).ceil
  when "good"
    (amount * 0.1).ceil
  when "great"
    (amount * 0.15).ceil
  when "excellent"
    (amount * 0.2).ceil
  else
    "Rating not recognised"
  end
end

# Get number from string 8kyu
# Write a function which removes from string all non-digit characters and parse the remaining to number. E.g: "hell5o wor6ld" -> 56
def get_number_from_string(s)
  s.gsub(/\D/, '').to_i
end

# Count the similey faces! 6kyu
# Given an array (arr) as an argument complete the function countSmileys that should return the total number of smiling faces.
def count_smileys(arr)
  arr.count { |x| x =~ /[:;][-~]?[)D]/ }
end

# Sum of Triangular Numbers 7kyu
# Your task is to return the sum of Triangular Numbers up-to-and-including the nth Triangular Number.
def sum_triangular_numbers(n)
  (1..n).map { |x| (x * (x + 1)) / 2 }.sum
end

# CSV representation of array 8kyu
# Write a function toCSVText/ToCsvText that takes in an array of arrays and returns a comma-separated values (CSV) string representing the same data.
def to_csv_text(array)
  array.map { |x| x.join(',') }.join("\n")
end

# Who likes it? 6kyu
# You probably know the "like" system from Facebook and other pages. People can "like" blog posts, pictures or other items. 
# We want to create the text that should be displayed next to such an item.
def likes(names)
  case names.length
  when 0
    "no one likes this"
  when 1
    "#{names[0]} likes this"
  when 2
    "#{names[0]} and #{names[1]} like this"
  when 3
    "#{names[0]}, #{names[1]} and #{names[2]} like this"
  else
    "#{names[0]}, #{names[1]} and #{names.length - 2} others like this"
  end
end

# Sleigh Authentication 8kyu
# Christmas is coming and many people dreamed of having a ride with Santa's sleigh. 
# But, of course, only Santa himself is allowed to use this wonderful transportation. 
# And in order to make sure, that only he can board the sleigh, there's an authentication mechanism.
# Your task is to implement the authenticate() method of the sleigh
# class, which takes the name of the person, who wants to board the sleigh and a secret password.
class Sleigh
  def authenticate(name, password)
    name == "Santa Claus" && password == "Ho Ho Ho!"
  end
end

# Sum of Cubes 7kyu
# Write a function that takes a positive integer n, sums all the cubed values from 1 to n, and returns that sum.
# Assume that the input n will always be a positive integer.
def sum_cubes(n)
  (1..n).map { |x| x**3 }.sum
end

# Build a pile of Cubes 6kyu
# Your task is to construct a building which will be a pile of n cubes.
# The cube at the bottom will have a volume of n^3, the cube above will have volume of (n-1)^3 and so on until the top which will have a volume of 1^3.
# You are given the total volume m of the building. Being given m can you find the number n of cubes you will have to build?
# The parameter of the function findNb (find_nb, find-nb, findNb) will be an integer m and you have to return the integer n such as n^3 + (n-1)^3 + ... + 1^3 = m if such a n exists or -1 if there is no such n.
def find_nb(m)
  n = 0
  while m > 0
    n += 1
    m -= n**3
  end
  m == 0 ? n : -1
end

# Find Multipless of a Number 8kyu
def find_multiples(integer, limit)
  (1..limit).select { |n| n % integer == 0 }
end

# Data Reverse 6kyu
# A stream of data is received and needs to be reversed.
# Each segment is 8 bits long, meaning the order of these segments needs to be reversed, for example:
# 11111111 00000000 00001111 10101010
# (byte1) (byte2) (byte3) (byte4)
# should become:
# 10101010 00001111 00000000 11111111
# (byte4) (byte3) (byte2) (byte1)
# The total number of bits will always be a multiple of 8.
# The data is given in an array as such:
# [ 1, 2, 3, 4, ...]
def data_reverse(data)
  data.each_slice(8).to_a.reverse.flatten
end

# Love vs friendship 7kyu
# If　a = 1, b = 2, c = 3 ... z = 26
# Then l + o + v + e = 54
# and f + r + i + e + n + d + s + h + i + p = 108
# So friendship is twice stronger than love :-)
# The input will always be in lowercase and never be empty.
def words_to_marks(string)
  string.chars.map { |x| x.ord - 96 }.sum
end

# Basic Training: Add item to an Array 8kyu
# Add the value "codewars" to the websites array.
# After your code executes the websites array should == ["codewars"]
# The websites array has already been defined for you using the following code:
$websites << "codewars"

# Reverse words 7kyu
# Complete the function that accepts a string parameter, and reverses each word in the string. All spaces in the string should be retained.
# Examples
# "This is an example!" ==> "sihT si na !elpmaxe"
# "double  spaces"      ==> "elbuod  secaps"
def reverse_words(str)
  str.split.map { |x| x.reverse }.join(' ')
end

# Primes in numbers 5kyu
# Given a positive number n > 1 find the prime factor decomposition of n. The result will be a string with the following form :
# "(p1**n1)(p2**n2)...(pk**nk)"
# with the p(i) in increasing order and n(i) empty if n(i) is 1.
# Example: n = 86240 should return "(2**5)(5)(7**2)(11)"
def primeFactors(n)
  result = []
  (2..n).each do |x|
    if n % x == 0
      count = 0
      while n % x == 0
        count += 1
        n /= x
      end
      result << "(#{x}#{count > 1 ? "**#{count}" : ''})"
    end
  end
  result.join
end

# Remove the time 8kyu
# Write a function, shortenToDate, that takes the Website date/time in its original string format, and returns the shortened format.
# Assume shortenToDate's input will always be a string, e.g. "Friday May 2, 7pm"
# Assume shortenToDate's output will be the shortened string, e.g., "Friday May 2"
def shorten_to_date(long_date)
  long_date.split(',')[0]
end

# Alphabet war - airstrike - letters massacre 7kyu
# Introduction
# There is a war and nobody knows - the alphabet war!
# There are two groups of hostile letters. The tension between left side letters and right side letters was too high and the war began.
# Task
# Write a function that accepts fight string consists of only small letters and return who wins the fight. When the left side wins return Left side wins!, when the right side wins return Right side wins!, in other case return Let's fight again!.
  
# The left side letters and their power:
#  w - 4
#  p - 3 
#  b - 2
#  s - 1
# The right side letters and their power:
#  m - 4
#  q - 3 
#  d - 2
#  z - 1
# The other letters don't have power and are only victims.
# The *-symbol powers are doubled (look at the examples below).
# The letters called airstrike (a, j and y) kill the adjacent letters ( i.e. a kills z, j kills s and y kills t). The killed letters don't 
# fight back.
# The airstrike always works from left to right.
# Example
# alphabet_war("s*zz");           //=> Right side wins!
# alphabet_war("*zd*qm*wp*bs*"); //=> Let's fight again!
# alphabet_war("zzzz*s*");       //=> Right side wins!
# alphabet_war("www*www****z");  //=> Left side wins!
def alphabet_war(fight)
  left = { 'w' => 4, 'p' => 3, 'b' => 2, 's' => 1 }
  right = { 'm' => 4, 'q' => 3, 'd' => 2, 'z' => 1 }
  fight = fight.gsub(/a|j|y/, '')
  fight = fight.gsub(/s\*|z\*|t\*/, 's').gsub(/\*s|\*z|\*t/, 's')
  fight = fight.gsub(/w\*|p\*|b\*|s\*/, 'w').gsub(/\*w|\*p|\*b|\*s/, 'w')
  fight = fight.gsub(/m\*|q\*|d\*|z\*/, 'm').gsub(/\*m|\*q|\*d|\*z/, 'm')
  left_power = fight.chars.map { |x| left[x] }.compact.sum
  right_power = fight.chars.map { |x| right[x] }.compact.sum
  if left_power > right_power
    "Left side wins!"
  elsif left_power < right_power
    "Right side wins!"
  else
    "Let's fight again!"
  end
end

# Array.diff 6kyu
# Your goal in this kata is to implement a difference function, which subtracts one list from another and returns the result.
# It should remove all values from list a, which are present in list b.
# array_diff([1,2],[1]) == [2]
# If a value is present in b, all of its occurrences must be removed from the other:
# array_diff([1,2,2,2,3],[2]) == [1,3]
def array_diff(a, b)
  a - b
end

# Check same case 8kyu
# Write a function that will check if two given characters are the same case.
# If either of the characters is not a letter, return -1
# If both characters are the same case, return 1
# If both characters are letters, but not the same case, return 0
# Examples
# 'a' and 'g' returns 1
# 'A' and 'C' returns 1
# 'b' and 'G' returns 0
# 'B' and 'g' returns 0
# '0' and '?' returns -1
def same_case?(a, b)
  if a =~ /[A-Za-z]/ && b =~ /[A-Za-z]/
    a == a.upcase && b == b.upcase || a == a.downcase && b == b.downcase ? 1 : 0
  else
    -1
  end
end

# Count by X 8kyu
# Create a function with two arguments that will return an array of the first (n) multiples of (x).
# Assume both the given number and the number of times to count will be positive numbers greater than 0.
# Return the results as an array (or list in Python, Haskell or Elixir).
# Examples:
# count_by(1,10) # should return [1,2,3,4,5,6,7,8,9,10]
# count_by(2,5) # should return [2,4,6,8,10]
def count_by(x, n)
  (1..n).map { |i| i * x }
end

# Contamination #1 -String 8kyu
# An AI has infected a text with a character!!
# This text is now fully mutated to this character.
# If the text or the character are empty, return an empty string.
# There will never be a case when both are empty as nothing is going on!!
# Note: The character is a string of length 1 or an empty string.
# Example
# text before = "abc"
# character   = "z"
# text after  = "zzz"
def contamination(text, char)
  char * text.length
end

# Surface Area and Volume of a Box 8kyu
# Write a function that returns the total surface area and volume of a box as an array: [area, volume]
def get_size(w, h, d)
  [2 * (w * h + w * d + h * d), w * h * d]
end

# Powers of 2 8kyu
# Complete the function that takes a non-negative integer n as input, and returns a list of all the powers of 2 with the exponent ranging from 0 to n (inclusive).
# Examples
# n = 0  ==> [1]        # [2^0]
# n = 1  ==> [1, 2]     # [2^0, 2^1]
# n = 2  ==> [1, 2, 4]  # [2^0, 2^1, 2^2]
def powers_of_two(n)
  (0..n).map { |i| 2 ** i }
end

# Find out whether the shape is a cube 8kyu
# To find the volume (centimeters cubed) of a cuboid you use the formula:
# volume = Length * Width * Height
# But someone forgot to use proper record keeping, so we only have the volume, and the length of a single side!
# It's up to you to find out whether the cuboid has equal sides (= is a cube).
# Return true if the cuboid could have equal sides, return false otherwise.
# Return false for invalid numbers too (e.g volume or side is less than or equal to 0).
# Note: the sides must be integers
def cube_checker(volume, side)
  side > 0 && volume > 0 && volume % side == 0
end

# Categoize New Member 7kyu
# The Western Suburbs Croquet Club has two categories of membership, Senior and Open. They would like your help with an application form that will tell prospective members which category they will be placed.
# To be a senior, a member must be at least 55 years old and have a handicap greater than 7. In this croquet club, handicaps range from -2 to +26; the better the player the lower the handicap.
# Input
# Input will consist of a list of lists containing two items each. Each list contains information for a single potential member. Information consists of an integer for the person's age and an integer for the person's handicap.
# Output
# Output will consist of a list of string values (in Haskell: Open or Senior) stating whether the respective member is to be placed in the senior or open category.
def openOrSenior(data)
  data.map { |i| i[0] >= 55 && i[1] > 7 ? 'Senior' : 'Open' }
end

# Leonardo Dicaprio and Oscars 8kyu
# You have to write a function that describe Leo:
# if oscar was (integer) 88, you have to return "Leo finally won the oscar! Leo is happy".
# if oscar was 86, you have to return "Not even for Wolf of wallstreet?!"
# if it was not 88 or 86 (and below 88) you should return "When will you give Leo an Oscar?"
# if it was over 88 you should return "Leo got one already!"
def leo(oscar)
  case oscar
  when 88
    "Leo finally won the oscar! Leo is happy"
  when 86
    "Not even for Wolf of wallstreet?!"
  when 0..87
    "When will you give Leo an Oscar?"
  else
    "Leo got one already!"
  end
end

# Who ate the cookie? 8kyu
# For this problem you must create a program that says who ate the last cookie. 
# If the input is a string then "Zach" ate the cookie. If the input is a float or an int then "Monica" ate the cookie. 
# If the input is anything else "the dog" ate the cookie. The way to return the statement is: "Who ate the last cookie? It was (name)!"
# Ex: Input = "hi" --> Output = "Who ate the last cookie? It was Zach!"
def cookie(x)
  "Who ate the last cookie? It was #{x.class == String ? 'Zach' : x.class == Float || x.class == Fixnum ? 'Monica' : 'the dog'}!"
end

# Is the string uppercase? 8kyu
# Create a method is_uppercase() to see whether the string is ALL CAPS. For example:
# is_uppercase("c") == False
# is_uppercase("C") == True
# is_uppercase("hello I AM DONALD") == False
# is_uppercase("HELLO I AM DONALD") == True
# is_uppercase("ACSKLDFJSgSKLDFJSKLDFJ") == False
# is_uppercase("ACSKLDFJSGSKLDFJSKLDFJ") == True
class String
  def is_upcase?
    self == self.upcase
  end
end

# Highest Rank Number in an Array 6kyu
# Complete the method which returns the number which is most frequent in the given input array. 
# If there is a tie for most frequent number, return the largest number among them.
# Note: no empty arrays will be given.
def highest_rank(arr)
  arr.group_by { |i| i }.max_by { |k, v| v.size }[0]
end

# Find the vowels 7kyu
# We want to know the index of the vowels in a given word, for example, there are two vowels in the word super (the second and fourth letters).
# So given a string "super", we should return a list of [2, 4].
def vowel_indices(word)
  word.chars.map.with_index { |i, index| index + 1 if 'aeiouy'.include?(i.downcase) }.compact
end

# Price of Mangoes 8kyu
# There's a "3 for 2" (or "2+1" if you like) offer on mangoes. For a given price and quantity, calculate the total cost of the mangoes.
# Examples
# mango(3, 3) ==> 2
# mango(9, 5) ==> 30
def mango(quantity, price)
  (quantity / 3) * 2 * price + (quantity % 3) * price
end

# Sum of Multiples 8kyu
# Find the sum of all multiples of n below m
# Keep in Mind
# n and m are natural numbers (positive integers)
# m is excluded from the multiples
def sum_mul(n, m)
  n < m ? (n...m).select { |i| i % n == 0 }.reduce(:+) : 'INVALID'
end

# Sum of Odd Cubed Numbers 7kyu
# Find the sum of the odd numbers within an array, after cubing the initial integers. The function should return undefined/None/nil/NULL if any of the values aren't numbers.
def cube_odd(arr)
  arr.all? { |i| i.is_a? Numeric } ? arr.select { |i| i.odd? }.map { |i| i ** 3 }.reduce(:+) : nil
end

# How good are you really? 8kyu
# There was a test in your class and you passed it. Congratulations!
# But you're an ambitious person. You want to know if you're better than the average student in your class.
# You receive an array with your peers' test scores. Now calculate the average and compare your score!
# Return True if you're better, else False!
# Note:
# Your points are not included in the array of your class's points. For calculating the average point you may add your point to the given array!
def better_than_average(arr, points)
  (arr.reduce(:+) + points) / (arr.size + 1) < points
end

# Ordered Count of Characters 7kyu
# Count the number of occurrences of each character and return it as a list of tuples in order of appearance. For empty output return an empty list.
# Example:
# ordered_count("abracadabra") == [('a', 5), ('b', 2), ('r', 2), ('c', 1), ('d', 1)]
def ordered_count(str)
  str.chars.uniq.map { |i| [i, str.count(i)] }
end

# Template Strings
# Template Strings, this kata is mainly aimed at the new JS ES6 Update introducing Template Strings
# Task
# Your task is to return the correct string using the Template String Feature.
# Input
# Two Strings, no validation is needed.
# Output
# You must output a string containing the two strings with the word ```' are '```
# Reference: https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/template_strings
def TempleStrings(obj, feature)
  "#{obj} are #{feature}"
end

# Alphabet symmetry 7kyu
# Consider the word "abode". We can see that the letter a is in position 1 and b is in position 2. In the alphabet, a and b are also in positions 1 and 2. Notice also that d and e in abode occupy the positions they would occupy in the alphabet, which are positions 4 and 5.
# Given an array of words, return an array of the number of letters that occupy their positions in the alphabet for each word. For example,
# solve(["abode","ABc","xyzD"]) = [4, 3, 1]. See test cases for more examples.
# Input will consist of alphabet characters, both uppercase and lowercase. No spaces.
def solve(arr)
  arr.map { |i| i.chars.select.with_index { |i, index| i.downcase == ('a'..'z').to_a[index] }.size }
end

# Sum of angles 7kyu
# Find the total sum of angles in an n sided shape. N will be greater than 2.
def angle(n)
  (n - 2) * 180
end

# max diff - easy
# You must implement a function maxDiff that return the difference between the biggest and the smallest value in a list(lst) received as parameter.
# The list(lst) contains integers, that means it may contain some negative numbers.
# If the list is empty or contains a single element, return 0.
# The list(lst) is not sorted.
def max_diff(lst)
  lst.empty? ? 0 : lst.max - lst.min
end

# Most digits 7kyu
# Find the number with the most digits.
# If two numbers in the argument array have the same number of digits, return the first one in the array.
def find_longest(arr)
  arr.max_by { |i| i.to_s.size }
end

# Sum of differences in array 8kyu
# Your task is to sum the differences between consecutive pairs in the array in descending order.
# For example: sumOfDifferences([2, 1, 10]) Returns 9
# Descending order: [10, 2, 1]
# Sum: (10 - 2) + (2 - 1) = 8 + 1 = 9
# If the array is empty or the array has only one element the result should be 0 (Nothing in Haskell).
def sum_of_differences(arr)
  arr.sort.reverse.each_cons(2).map { |i, j| i - j }.reduce(:+) || 0
end

# Predict your age! 7kyu
# My grandfather always predicted how old people would get, and right before he passed away he revealed his secret!
# In honor of my grandfather's memory we will write a function using his formula!
# Take a list of ages when each of your great-grandparent died.
# Multiply each number by itself.
# Add them all together.
# Take the square root of the result.
# Divide by two.
# Example
# predictAge(65, 60, 75, 55, 60, 63, 64, 45) === 86
# Note: the result should be rounded down to the nearest integer.
def predict_age(age_1, age_2, age_3, age_4, age_5, age_6, age_7, age_8)
  (Math.sqrt(age_1 ** 2 + age_2 ** 2 + age_3 ** 2 + age_4 ** 2 + age_5 ** 2 + age_6 ** 2 + age_7 ** 2 + age_8 ** 2) / 2).floor
end

# Rot13 5kyu
# ROT13 is a simple letter substitution cipher that replaces a letter with the letter 13 letters after it in the alphabet. 
# ROT13 is an example of the Caesar cipher.
# Create a function that takes a string and returns the string ciphered with Rot13. 
# If there are numbers or special characters included in the string, they should be returned as they are. 
# Only letters from the latin/english alphabet should be shifted, like in the original Rot13 "implementation".
def rot13(string)
  string.tr('A-Za-z', 'N-ZA-Mn-za-m')
end

# Convert an array of strings to array of numbers 7kyu
# Some really funny web dev gave you a sequence of numbers from his API response as an sequence of strings!
# You need to cast the whole array to the correct type.
# Create the function that takes as a parameter a sequence of numbers represented as strings and outputs a sequence of numbers.
# ie:["1", "2", "3"] to [1, 2, 3]
# Note that you can receive floats as well.
def to_float_array(arr)
  arr.map(&:to_f)
end

# Grasshopper - Array Mean 8kyu
# Find Mean
# Find the mean (average) of a list of numbers in an array.
# Information
# To find the mean (average) of a set of numbers add all of the numbers together and divide by the number of values in the list.
# For an example list of 1, 3, 5, 7
# 1. Add all of the numbers
# 1+3+5+7 = 16
# 2. Divide by the number of values in the list. In this example there are 4 numbers in the list.
# 16/4 = 4
# 3. The mean (or average) of this list is 4
def find_average(nums)
  nums.reduce(:+) / nums.size.to_f rescue 0
end

# Divide and Conquer 7kyu
# Given a mixed array of number and string representations of integers, add up the string integers and subtract this from the total of the non-string integers.
# Return as a number.
def div_con(x)
  x.map { |i| i.is_a?(String) ? -i.to_i : i }.reduce(:+)
end

# Number of Decimal Digits 7kyu
# Determine the total number of digits in the integer (n>=0) given as input to the function. 
# For example, 9 is a single digit, 66 has 2 digits and 128685 has 6 digits.
# Be careful to avoid overflows/underflows.
def digits(n)
  n.to_s.size
end

# Minimize Sum Of Array (Array Series #1) 7kyu
# Given an array of intgers , Find the minimum sum which is obtained from summing each Two integers product .
# Notes
# Array/list will contain positives only .
# Array/list will always has even size
# Input >> Output Examples
# minSum({5,4,2,3}) ==> return (22)
# Explanation:
# The minimum sum obtained from summing each two integers product , 5*2 + 3*4 = 22
# minSum({12,6,10,26,3,24}) ==> return (342)
# Explanation:
# The minimum sum obtained from summing each two integers product , 26*3 + 24*6 + 12*10 = 342
# minSum({9,2,8,7,5,4,0,6}) ==> return (74)
# Explanation:
# The minimum sum obtained from summing each two integers product , 9*0 + 8*2 +7*4 +6*5 = 74
def min_sum(arr)
  result = 0
  arr.sort.each do |i, j|
  #  i = arr.min
  #  j = arr.max
    result += i * j
    i -= 1
    j -= 1
  end
  result
end

# get ascii value of character
# Write a function getASCII which inputs a character and returns the corresponding ascii value for that character.
def get_ascii(c)
  c.ord
end

# Exclamation marks series #4: Remove all exclamation marks from sentence but ensure a exclamation mark at the end of string
# Remove all exclamation marks from sentence except at the end.
# Examples
# remove("Hi!") === "Hi!"
# remove("Hi!!!") === "Hi!!!"
# remove("!Hi") === "Hi!"
# remove("!Hi!") === "Hi!"
# remove("Hi! Hi!") === "Hi Hi!"
# remove("Hi") === "Hi!"
def remove(s)
  s.gsub(/!+/, '') + '!'
end

def remove(s)
  s.delete('!') << '!'
end

def remove(s)
  s.tr("!","") + "!"
end

# Simple beads count 7kyu
# Two red beads are placed between every two blue beads. There are N blue beads.
# After looking at the arrangement below work out the number of red beads.
# @ @@ @ @@ @ @@ @ @@ @ @@ @
# Implement count_red_beads(N_blue) (in PHP count_red_beads($n); in Java, Javascript countRedBeads(n)) so that it returns the number of red beads.
# If there are less than 2 blue beads return 0.
def count_red_beads(n)
  n < 2 ? 0 : (n - 1) * 2
end

def count_red_beads n 
  return 0 if n < 2
  2 * (n-1)
end 

# Are they the "same"? 6kyu
# Given two arrays a and b write a function comp(a, b) (compSame(a, b) in Clojure) that checks whether the two arrays have the "same" elements, with the same multiplicities. "Same" means, here, that the elements in b are the elements in a squared, regardless of the order.
# Examples
# Valid arrays
# a = [121, 144, 19, 161, 19, 144, 19, 11]
# b = [121, 14641, 20736, 361, 25921, 361, 20736, 361]
# comp(a, b) returns true because in b 121 is the square of 11, 14641 is the square of 121, 20736 the square of 144, 361 the square of 19, 25921 the square of 161, and so on. It gets obvious if we write b's elements in terms of squares:
# a = [121, 144, 19, 161, 19, 144, 19, 11]
# b = [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]
# Invalid arrays
# If we change the first number to something else, comp may not return true anymore:
# a = [121, 144, 19, 161, 19, 144, 19, 11]
# b = [132, 14641, 20736, 361, 25921, 361, 20736, 361]
# comp(a,b) returns false because in b 132 is not the square of any number of a.
# a = [121, 144, 19, 161, 19, 144, 19, 11]
# b = [121, 14641, 20736, 36100, 25921, 361, 20736, 361]
# comp(a,b) returns false because in b 36100 is not the square of any number of a.
# Remarks
# a or b might be [] (all languages except R, Shell).
# a or b might be nil or null or None or nothing (except in Haskell, Elixir, C++, Rust, R, Shell).
# If a or b are nil (or null or None), the problem doesn't make sense so return false.
# If a or b are empty the result is evident by itself.
# a or b are empty or not empty lists.
def comp(array1, array2)
  array1.nil? || array2.nil? ? false : array1.sort.map { |i| i * i } == array2.sort
end

# Thinkful - Number Drills: Blue and red marbles 8kyu
# You have a bunch of marbles. There are blue ones and red ones. You take a handful of marbles out of the bag, randomly, and count how many of each color you get. You repeat this a bunch of times, counting the blue and red marbles each time, and then calculate the ratio of blue to red at the end.
# You are curious about whether the number of blue ones is consistently higher than the number of red ones. To test this, you decide to do an experiment: You fill another bag with a bunch of blue and red marbles and repeat the drawing/conclusion process from above.
# The function you are going to write will have several parameters. The first parameter will be the number of blue marbles you put into the bag. The second parameter will be the number of red marbles. The third parameter will be the number of times to draw marbles, count them, and calculate the ratio of blue to red marbles.
# The function should return a number which represents the average ratio of blue to red marbles. Each time you calculate the ratio you get a different answer, so to get an average you need to add all of the ratios together and divide by the total number of times you did the calculation.
# For example, if you put 5 blue marbles and 6 red marbles in the bag and did this 10 times, your function should return 1.1666666666666667.
# The return value should be a number, so an integer (1,2,3) is fine, but a decimal (1.0, 2.0, 3.0) is not.
def guess_blue(blue_start, red_start, blue_pulled, red_pulled)
  (blue_start - blue_pulled).to_f / (blue_start - blue_pulled + red_start - red_pulled)
end

# Mexican Wave 6kyu
# Introduction
# The wave (known as the Mexican wave in the English-speaking world outside North America) is an example of metachronal rhythm achieved in a packed stadium when successive groups of spectators briefly stand, yell, and raise their arms. Immediately upon stretching to full height, the spectator returns to the usual seated position.
# The result is a wave of standing spectators that travels through the crowd, even though individual spectators never move away from their seats. In many large arenas the crowd is seated in a contiguous circuit all the way around the sport field, and so the wave is able to travel continuously around the arena; in discontiguous seating arrangements, the wave can instead reflect back and forth through the crowd. When the gap in seating is narrow, the wave can sometimes pass through it. Usually only one wave crest will be present at any given time in an arena, although simultaneous, counter-rotating waves have been produced. (Source Wikipedia)
# Task
# In this simple Kata your task is to create a function that turns a string into a Mexican Wave. You will be passed a string and you must return that string in an array where an uppercase letter is a person standing up.
# Rules
# 1.  The input string will always be lower case but maybe empty.
# 2.  If the character in the string is whitespace then pass over it as if it was an empty seat.
# Example
# wave("hello") => ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
def wave(str)
  result = []
  str.length.times do |i|
    result << str[0...i] + str[i].upcase + str[i + 1..-1] if str[i] != ' '
  end
  result
end

# Nth Smallest Element (Array Series #4) 7kyu
# Introduction and Warm-up (Highly recommended)
# Playing With Lists/Arrays Series
# Task
# Given an array/list [] of integers , Find the Nth smallest element in this array of integers
# Notes
# Array/list size is at least 3 .
# Array/list's numbers could be a mixture of positives , negatives and zeros .
# Repetition in array/list's numbers could occur , so don't Remove Duplications .
# Input >> Output Examples
# nthSmallest({3,1,2} ,2) ==> return (2)
# Explanation:
# Since the passed number is 2 , Then * the second smallest element in this array/list is 2*
# nthSmallest({15,20,7,10,4,3} ,3) ==> return (7)
# Explanation:
# Since the passed number is 3 , Then * the third smallest element in this array/list is 7*
# nthSmallest({2,169,13,-5,0,-1} ,4) ==> return (2)
# Explanation:
# Since the passed number is 4 , Then * the fourth smallest element in this array/list is 2*
# nthSmallest({177,225,243,-169,-12,-5,2,92} ,5) ==> return (92)
# Explanation:
# Since the passed number is 5 , Then * the fifth smallest element in this array/list is 92*
def nth_smallest(arr, pos)
  arr.sort[pos - 1]
end

# Enumerable Magic #1 - True for All?
# Create a method all which takes two params:
# a sequence
# a function (function pointer in C)
# and returns true if the function in the params returns true for every item in the sequence. Otherwise, it should return false. If the sequence is empty, it should return true, since technically nothing failed the test.
def all? array, &block
  array.all?(&block)
end

# Area of a Square 8kyu
# Complete the function that calculates the area of the red square, when the length of the circular arc A is given as the input. Return the result rounded to two decimals.
# Note: use the π value provided in your language (Math::PI, M_PI, math.pi, etc)
def square_area(a)
  ((2 * a / Math::PI)**2).round(2)
end