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