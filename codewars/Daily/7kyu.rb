# Sort by Last Char 7kyu
# Given a string of words (x), you need to return an array of the words, sorted alphabetically by the final character in each.
# If two words have the same last letter, they returned array should show them in the order they appeared in the given string.
# All inputs will be valid.
def last(x)
  x.split.sort_by { |word| word[-1] }
end

# Filter the number 7kyu
# Oh no! The number has been mixed up with the text. Your goal is to retreive the number from the text, can you return the number back to it's original state?
# Task
# Your task is to return a number from a string.
def FilterString(string)
  string.gsub(/\D/, '').to_i
end

# Maximum Triplet Sum (Array Series #7)
# Task
# Given an array/list [] of n integers , find maximum triplet sum in the array Without duplications .
def max_tri_sum(numbers)
  numbers.uniq.max(3).sum
end

# Going to the cinema 7kyu
# My friend John likes to go to the cinema. He can choose between system A and system B.
# System A : buy a ticket (15 dollars) every time
# System B : buy a card (500 dollars) and every time
# buy a ticket the price of which is 0.90 times the price he paid for the previous one.
# # Example:
# # If John goes to the cinema 3 times:
# # System A : 15 * 3 = 45
# # System B : 500 + 15 * 0.90 + (15 * 0.90) * 0.90 = 536.5849999999999
# # John should go to the cinema system B.
# # The function movie has 3 parameters: card (price of the card), ticket (normal price of a ticket), perc (fraction of what he paid for the previous ticket) and returns the first n such that
# # ceil(price of System B) < price of System A.
# # More examples:
# # movie(500, 15, 0.9) should return 43 
# # (with card the total price is 634, with tickets 645)
# # movie(100, 10, 0.95) should return 24
# # (with card the total price is 235, with tickets 240)
def movie(card, ticket, perc)
  n = 0
  a = 0
  b = card
  while b.ceil >= a
    n += 1
    a += ticket
    b += ticket * perc**n
  end
  n
end

# Simple remove duplicates 7kyu
# Remove the duplicates from a list of integers, keeping the last ( rightmost ) occurrence of each element.
# # Example:
# #   solve([3, 4, 4, 3, 6, 3]) # => [4, 6, 3]
# #   -- remove the first 3
# #   -- remove 4 because it occurs twice
# #   -- remove the second 3
def solve(arr)
  arr.reverse.uniq.reverse
end

# Over The Road 7kyu
# You've just moved into a perfectly straight street with exactly n identical houses on either side of the road. Naturally, you would like to find out the house number of the people on the other side of the street. The street looks something like this:
# Street
# 1|   |6
# 3|   |4
# 5|   |2
# 7|   |0
# Even numbers increase on the right; odd numbers decrease on the left. House numbers start at 0 and increase without gaps. When n = 3, 1 is opposite 6, 3 opposite 4, and 5 opposite 2.
# # Example
# Given your house number address and length of street n, give the house number on the opposite side of the street.
# # over_the_road(address, n)
# # over_the_road(1, 3) = 6
# # over_the_road(3, 3) = 4
# # over_the_road(2, 3) = 5
# # over_the_road(3, 5) = 8
def over_the_road(address, n)
  2 * n + 1 - address
end

# Spacify 7kyu
# Modify the spacify function so that it returns the given string with spaces insertedbetween each character.
# spacify("hello world") // returns "h e l l o   w o r l d"
def spacify(str)
  str.chars.join(' ')
end

# Odd-Even String Sort 7kyu
# https://www.codewars.com/kata/580755730b5a77650500010c/train/ruby
# Given a string S. You have to return another string such that even-indexed and odd-indexed characters of S are grouped and groups are space-separated (see sample below)
# Note:
# 0 is considered to be an even index.
# All input strings are valid with no spaces
# input: 'CodeWars'
# output 'CdWr oeas'
# S[0] = 'C'
# S[1] = 'o'
# S[2] = 'd'
# S[3] = 'e'
# S[4] = 'W'
# S[5] = 'a'
# S[6] = 'r'
# S[7] = 's'
# Even indices 0, 2, 4, 6, so we have 'CdWr' as the first group
# odd ones are 1, 3, 5, 7, so the second group is 'oeas'
# And the final string to return is 'Cdwr oeas'
def sort_my_string(s)
  s.chars.partition.with_index { |_, i| i.even? }.map(&:join).join(' ')
end

# Smallest value of an array 7kyu
# https://www.codewars.com/kata/544a54fd18b8e06d240005c0/train/ruby
# Write a function that can return the smallest value of an array or the index of that value. The function's 2nd parameter will tell whether it should return the value or the index.
# Assume the first parameter will always be an array filled with at least 1 number and no duplicates. Assume the second parameter will be a string holding one of two values: 'value' and 'index'.
# min([1,2,3,4,5], 'value') // => 1
# min([1,2,3,4,5], 'index') // => 0
def find_smallest(numbers, to_return)
  to_return == 'value' ? numbers.min : numbers.index(numbers.min)
end

# Char Code Calculation 7kyu
# https://www.codewars.com/kata/57f75cc397d62fc93d000059/train/ruby
# Given a string, turn each character into its ASCII character code and join them together to create a number - let's call this number total1:
# 'ABC' --> 'A' = 65, 'B' = 66, 'C' = 67 --> 656667
# Then replace any incidence of the number 7 with the number 1, and call this number 'total2':
# total1 = 656667
#               ^
# total2 = 656661
#               ^
# Then return the difference between the sum of the digits in total1 and total2:
#   (6 + 5 + 6 + 6 + 6 + 7)
# - (6 + 5 + 6 + 6 + 6 + 1)
# -------------------------
#                        6
def calc(x)
  total1 = x.chars.map { |char| char.ord }.join.to_i
  total2 = total1.to_s.gsub('7', '1').to_i
  total1.digits.sum - total2.digits.sum
end

# Maximum Length Difference 7kyu
# https://www.codewars.com/kata/5663f5305102699bad000056/train/ruby
# You are given two arrays a1 and a2 of strings. Each string is composed with letters from a to z. Let x be any string in the first array and y be any string in the second array.
# Find max(abs(length(x) − length(y)))
# If a1 and/or a2 are empty return -1 in each language except in Haskell (F#) where you will return Nothing (None).
# #Example:
# # a1 = ["hoqq", "bbllkw", "oox", "ejjuyyy", "plmiis", "xxxzgpsssa", "xxwwkktt", "znnnnfqknaz", "qqquuhii", "dvvvwz"]
# # a2 = ["cccooommaaqqoxii", "gggqaffhhh", "tttoowwwmmww"]
# # mxdiflg(a1, a2) --> 13
def mxdiflg(a1, a2)
  return -1 if a1.empty? || a2.empty?
  [a1.map(&:length).max - a2.map(&:length).min, a2.map(&:length).max - a1.map(&:length).min].max
end

# Maximum Product 7kyu
# https://www.codewars.com/kata/5a4138acf28b82aa43000117/train/ruby
# Task
# Given an array of integers , Find the maximum product obtained from multiplying 2 adjacent numbers in the array.
# Notes
# Array/list size is at least 2 .
# Array/list numbers could be a mixture of positives , ngatives also zeroes .
# Input >> Output Examples
# adjacentElementsProduct([1, 2, 3]); ==> return 6  
# Explanation:
# The maximum product obtained from multiplying 2 * 3 = 6, and they're adjacent numbers in the array.
# adjacentElementsProduct([9, 5, 10, 2, 24, -1, -48]); ==> return 50
# Explanation:
# Max product obtained from multiplying 5 * 10 = 50 .
# adjacentElementsProduct([-23, 4, -5, 99, -27, 329, -2, 7, -921])  ==>  return -14
# Explanation:
# The maximum product obtained from multiplying -2 * 7 = -14, and they're adjacent numbers in the array.
def adjacent_element_product(array)
  array.each_cons(2).map { |a, b| a * b }.max
end

# Squares sequence 7kyu
# https://www.codewars.com/kata/5546180ca783b6d2d5000062/train/ruby
# Complete the function that returns an array of length n, starting with the given number x and the squares of the previous number. 
# If n is negative or zero, return an empty array/list.
# Examples
# 2, 5  -->  [2, 4, 16, 256, 65536]
# 3, 3  -->  [3, 9, 81]
def squares(x, n)
  n.times.map { |i| x**(2**i) }
end

# Building blocks 7kyu
# https://www.codewars.com/kata/55b75fcf67e558d3750000a3/train/ruby
# Write a class Block that creates a block (Duh..)
# ##Requirements
# The constructor should take an array as an argument, this will contain 3 integers of the form [width, length, height] from which the Block should be created.
# Define these methods:
# `get_width()` return the width of the `Block`
# `get_length()` return the length of the `Block`
# `get_height()` return the height of the `Block`
# `get_volume()` return the volume of the `Block`
# `get_surface_area()` return the surface area of the `Block`
class Block
  def initialize(array)
    @width = array[0]
    @length = array[1]
    @height = array[2]
  end

  def get_width
    @width
  end

  def get_length
    @length
  end

  def get_height
    @height
  end

  def get_volume
    @width * @length * @height
  end

  def get_surface_area
    2 * (@width * @length + @width * @height + @length * @height)
  end
end

# Help the Fruit Guy 7kyu
# https://www.codewars.com/kata/557af4c6169ac832300000ba/train/ruby
# Our fruit guy has a bag of fruits (array of strings) where some fruits are rotten. He wants to replace all the rotten fruits by good ones.
# For example, given this array ["apple","rottenBanana","apple"] the replaced array should be ["apple","banana","apple"].
# Your task is to implement a method that will take as an argument an array of strings containing fruits and should return an array of strings where all the rotten fruits are replaced by good ones.
# Note: if the array is null or empty you should return empty array ([]). the rotten fruit name will be in this format rottenFruitname where is the 1st letter of the fruit name is uppercase.
def remove_rotten(fruit_basket)
  fruit_basket&.map { |fruit| fruit.gsub('rotten', '').downcase } || []
end

# The Office I - Outed 7kyu
# https://www.codewars.com/kata/57ecf6efc7fe13eb070000e1/train/ruby
# Your colleagues have been looking over you shoulder. 
# When you should have been doing your boring real job, you've been using the work computers to smash in endless hours of codewars.
# In a team meeting, a terrible, awful person declares to the group that you aren't working. You're in trouble.
# You quickly have to gauge the feeling in the room to decide whether or not you should gather your things and leave.
# Given an object (meet) containing team member names as keys, and their happiness rating out of 10 as the value,
# you need to assess the overall happiness rating of the group. If <= 5, return 'Get Out Now!'. Else return 'Nice Work Champ!'.
# Happiness rating will be total score / number of people in the room.
# Note that your boss is in the room (boss), their score is worth double it's face value (but they are still just one person!).
def outed(meet, boss)
  (meet.values.sum + meet[boss.to_sym]) / meet.size > 5 ? 'Nice Work Champ!' : 'Get Out Now!'
end

# Sort the Gift Code 7kyu
# https://www.codewars.com/kata/52aeb2f3ad0e952f560005d3/train/ruby
# Happy Holidays fellow Code Warriors!
# Santa's senior gift organizer Elf developed a way to represent up to 26 gifts by assigning a unique alphabetical character to each gift.
# After each gift was assigned a character, the gift organizer Elf then joined the characters to form the gift ordering code.
# Santa asked his organizer to order the characters in alphabetical order, but the Elf fell asleep from consuming too much hot chocolate and candy canes!
# Can you help him out?
# Sort the Gift Code
# Write a function called sortGiftCode/sort_gift_code/SortGiftCode that accepts a string containing up to 26 unique alphabetical characters,
# and returns a string containing the same characters in alphabetical order.
# Examples:
# sort_gift_code( 'abcdef' ) # 'abcdef'
# sort_gift_code( 'pqksuvy' ) # 'kpqsuvy'
# sort_gift_code( 'zyxwvutsrqponmlkjihgfedcba' ) # 'abcdefghijklmnopqrstuvwxyz'
def sort_gift_code(code)
  code.chars.sort.join
end

# Alternate case 7kyu
# https://www.codewars.com/kata/57a62154cf1fa5b25200031e/train/ruby
# Write function alternateCase which switch every letter in string from upper to lower and from lower to upper. E.g: Hello World -> hELLO wORLD
def alternate_case(string)
  string.swapcase
end

# Build a square 7kyu
# https://www.codewars.com/kata/59a96d71dbe3b06c0200009c/train/ruby
# I will give you an integer. Give me back a shape that is as long and wide as the integer. The integer will be a whole number between 0 and 50.
# Example
# n = 3, so I expect a 3x3 square back just like below as a string:
# +++
# +++
# +++
def generate_shape(n)
  result = ('+' * n + "\n") * n
  result[0..-2]
end

# Check the exam 7kyu
# https://www.codewars.com/kata/5a3dd29055519e23ec000074/train/ruby
# The first input array is the key to the correct answers to an exam, like ["a", "a", "b", "d"].
# The second one contains a student's submitted answers.
# The two arrays are not empty and are the same length. Return the score for this array of answers,
# giving +4 for each correct answer, -1 for each incorrect answer, and +0 for each blank answer,
# represented as an empty string (in C the space character is used).
# If the score < 0, return 0.
# For example:
# checkExam(["a", "a", "b", "b"], ["a", "c", "b", "d"]) → 6
# checkExam(["a", "a", "c", "b"], ["a", "a", "b",  ""]) → 7
# checkExam(["a", "a", "b", "c"], ["a", "a", "b", "c"]) → 16
# checkExam(["b", "c", "b", "a"], ["",  "a", "a", "c"]) → 0
def check_exam(arr1, arr2)
  result = 0
  arr1.each_with_index do |answer, index|
    if answer == arr2[index]
      result += 4
    elsif arr2[index] == ''
      result += 0
    else
      result -= 1
    end
  end
  result < 0 ? 0 : result
end

# The old switcheroo 7kyu
# https://www.codewars.com/kata/55d410c492e6ed767000004f/train/ruby
# Write a function
# vowel_2_index
# that takes in a string and replaces all the vowels [a,e,i,o,u] with their respective positions within that string.
# E.g:
# vowel_2_index('this is my string') == 'th3s 6s my str15ng'
# vowel_2_index('Codewars is the best site in the world') == 'C2d4w6rs 10s th15 b18st s23t25 27n th32 w35rld'
# vowel_2_index('') == ''
def vowel_2_index(string)
  vowels = %w[a e i o u]
  string.chars.map.with_index { |char, index| vowels.include?(char.downcase) ? index + 1 : char }.join
end

# Numbers to Letters 7kyu
# https://www.codewars.com/kata/57ebaa8f7b45ef590c00000c/train/ruby
# Given an array of numbers (in string format), you must return a string.
# The numbers correspond to the letters of the alphabet in reverse order: a=26, z=1 etc.
# You should also account for '!', '?' and ' ' that are represented by '27', '28' and '29' respectively.
# All inputs will be valid.
def switcher(arr)
  alphabet = ('a'..'z').to_a.reverse
  alphabet << '!'
  alphabet << '?'
  alphabet << ' '
  arr.map { |char| alphabet[char.to_i - 1] }.join
end

# Money, Money, Money 7kyu
# https://www.codewars.com/kata/563f037412e5ada593000114/train/ruby
# Mr. Scrooge has a sum of money 'P' that wants to invest, and he wants to know how many years 'Y'
# this sum has to be kept in the bank in order for this sum of money to amount to 'D'.
# The sum is kept for 'Y' years in the bank where interest 'I' is paid yearly,
# and the new sum is re-invested yearly after paying tax 'T'
# Note that the principal is not taxed but only the year's accrued interest
# Example:
#   Let P be the Principal = 1000.00
#   Let I be the Interest Rate = 0.05
#   Let T be the Tax Rate = 0.18
#   Let D be the Desired Sum = 1100.00
# After 1st Year -->
#  P = 1041.00
# After 2nd Year -->
# P = 1083.86
# After 3rd Year -->
# P = 1128.30
# Thus Mr. Scrooge has to wait for 3 years for the initial pricipal to ammount to the desired sum.
# Your task is to complete the method provided and return the number of years 'Y' as a whole in order for Mr. Scrooge to get the desired sum.
# Assumptions : Assume that Desired Principal 'D' is always greater than the initial principal,
# however it is best to take into consideration that if the Desired Principal 'D' is equal to Principal 'P' this should return 0 Years.
def calculate_years(principal, interest, tax, desired)
  years = 0
  while principal < desired
    principal += principal * interest - principal * interest * tax
    years += 1
  end
  years
end

# Find the nth Digit of a Number 7kyu
# https://www.codewars.com/kata/577b9960df78c19bca00007e/train/ruby
# Complete the function that takes two numbers as input, num and nth and return the nth digit of num (counting from right to left).
# Note
# If num is negative, ignore its sign and treat it as a positive value
# If nth is not positive, return -1
# Keep in mind that 42 = 00042. This means that findDigit(42, 5) would return 0
def find_digit(num, nth)
  return -1 if nth <= 0
  num = num.abs.to_s
  num[-nth].to_i
end

# Discover The Original Price 7kyu
# https://www.codewars.com/kata/552564a82142d701f5001228/train/ruby
# We need to write some code to return the original price of a product,
# the return type must be of type decimal and the number must be rounded to two decimal places.
# We will be given the sale price (discounted price), and the sale percentage, our job is to figure out the original price.
# For example:
# Given an item at $75 sale price after applying a 25% discount, the function should return the original price of that item before applying the sale percentage, which is ($100.00)
#   reverse(75,25) => 100.00
# Note: The return type must be of type decimal and the number must be rounded to two decimal places.
def discover_original_price(discounted_price, sale_percentage)
  (discounted_price / (1 - (sale_percentage.to_f / 100))).round(2)
end

# The Office II - Boredom Score 7kyu
# https://www.codewars.com/kata/57ed4cef7b45ef8774000014/train/ruby
# Every now and then people in the office moves teams or departments.
# Depending what people are doing with their time they can become more or less boring.
# Time to assess the current team.
# You will be provided with an object(staff) containing the staff names as keys,
# and the department they work in as values.
# Each department has a different boredom assessment score, as follows:
# accounts = 1
# finance = 2
# canteen = 10
# regulation = 3
# trading = 6
# change = 6
# IS = 8
# retail = 5
# cleaning = 4
# pissing about = 25
# Depending on the cumulative score of the team, return the appropriate sentiment:
# <=80: 'kill me now'
# < 100 & > 80: 'i can handle this'
# 100 or over: 'party time!!'
def boredom(staff)
  boredom_score = 0
  staff.each_value do |department|
    boredom_score += case department
                     when 'accounts' then 1
                     when 'finance' then 2
                     when 'canteen' then 10
                     when 'regulation' then 3
                     when 'trading' then 6
                     when 'change' then 6
                     when 'IS' then 8
                     when 'retail' then 5
                     when 'cleaning' then 4
                     when 'pissing about' then 25
                     end
  end
  case boredom_score
  when 0..80 then 'kill me now'
  when 81..99 then 'i can handle this'
  else 'party time!!'
  end
end

# A Rule of Divisibility by 7 7kyu
# https://www.codewars.com/kata/55e6f5e58f7817808e00002e/train/ruby
# A number m of the form 10x + y is divisible by 7 if and only if x − 2y is divisible by 7.
# In other words, subtract twice the last digit from the number formed by the remaining digits.
# Continue to do this until a number known to be divisible or not by 7 is obtained;
# you can stop when this number has at most 2 digits because you are supposed to know
# if a number of at most 2 digits is divisible by 7 or not.
# The original number is divisible by 7 if and only if the last number obtained using this procedure is divisible by 7.
# Examples:
#   1 - m = 371 -> 37 − (2×1) -> 37 − 2 = 35; thus, since 35 is divisible by 7, 371 is divisible by 7.
#  The number of steps to get the result is 1.
#   2 - m = 1603 -> 160 - (2 x 3) -> 154 -> 15 - 8 = 7, and 7 is divisible by 7.
#  3 - m = 372 -> 37 − (2×2) -> 37 − 4 = 33; thus, since 33 is not divisible by 7, 372 is not divisible by 7.
# The number of steps to get the result is 1.
#   4 - m = 477557101->47755708->4775554->477547->47740->4774->469->28
# and 28 is divisible by 7, so is 477557101. The number of steps is 7.
# Task:
# Your task is to return to the function seven(m) (m integer >= 0) an array
# (or a pair, depending on the language) of numbers, the first being the last number m
# with at most 2 digits obtained by your function (this last m will be divisible or not by 7),
# the second one being the number of steps to get the result.
# seven(371) should return [35, 1]
# seven(1603) should return [7, 2]
# seven(477557101) should return [28, 7]
def seven(m)
  steps = 0
  until m.to_s.length <= 2
    m = m.to_s[0..-2].to_i - 2 * m.to_s[-1].to_i
    steps += 1
  end
  [m, steps]
end
  
# Jumping Number (Special Numbers Series #4) 7kyu
# https://www.codewars.com/kata/5a54e796b3bfa8932c0000ed/train/ruby
# Definition
# Jumping number is the number that All adjacent digits in it differ by 1.
# Task
# Given a number, Find if it is Jumping or not .
# Warm-up (Highly recommended)
# Playing With Numbers Series
# Notes
# Number passed is always Positive .
# Return the result as String .
# The difference between ‘9’ and ‘0’ is not considered as 1 .
# All single digit numbers are considered as Jumping numbers.
# Input >> Output Examples
# jumpingNumber(9) ==> return "Jumping!!"
# Explanation:
# It's single-digit number
# jumpingNumber(79) ==> return "Not!!"
# Explanation:
# Adjacent digits don't differ by 1
# jumpingNumber(23) ==> return "Jumping!!"
# Explanation:
# Adjacent digits differ by 1
# jumpingNumber(556847) ==> return "Not!!"
# Explanation:
# Adjacent digits don't differ by 1
# jumpingNumber(4343456) ==> return "Jumping!!"
# Explanation:
# Adjacent digits differ by 1
def jumping_number(n)
  n = n.to_s.chars.map(&:to_i)
  n.each_with_index do |num, i|
    next if i == n.length - 1
    return 'Not!!' if (num - n[i + 1]).abs != 1
  end
  'Jumping!!'
end

# The Office III - Broken Photocopier 7kyu
# https://www.codewars.com/kata/57ed56657b45ef922300002b/train/ruby
# The bloody photocopier is broken... Just as you were sneaking around the office to print off your favourite binary code!
# Instead of copying the original, it reverses it: '1' becomes '0' and vice versa.
# Given a string of binary, return the version the photocopier gives you as a string.
def broken(x)
  x.tr('01', '10')
end

# Simple string characters 7kyu
# https://www.codewars.com/kata/5a29a0898f27f2d9c9000058/train/ruby
# In this Kata, you will be given a string and your task will be to return a list of ints detailing the count of uppercase letters, lowercase, numbers and special characters, as follows.
# Solve("*'&ABCDabcde12345") = [4,5,5,3].
# --the order is: uppercase letters, lowercase, numbers and special characters.
def solve(s)
  [s.count('A-Z'), s.count('a-z'), s.count('0-9'), s.count('^a-zA-Z0-9')]
end

# Remove All The Marked Elements of a List 7kyu
# https://www.codewars.com/kata/563089b9b7be03472d00002b/train/ruby
# We need a method in the List Class that may remove from a given list of integers, all the values contained in a second list.
# The method remove_() will accept two arguments, a list of an uncertain amount of integers, integer_list
# and a second list that contains integer values, too, values_list.
# The method will output a list with all the integers that are not in values_list
# Like the following:
# integer_list =  [1, 1, 2 ,3 ,1 ,2 ,3 ,4]
# values_list = [1, 3]
# remove_(integer_list, values_list) == [2, 2, 4]
# Enjoy it!!
class Array
  def remove_(integer_list, values_list)
    integer_list.reject { |num| values_list.include?(num) }
  end
end

# Product Of Maximums Of Array (Array Series #2) 7kyu
# https://www.codewars.com/kata/5a63948acadebff56f000018/train/ruby
# Introduction and Warm-up (Highly recommended)
# Playing With Lists/Arrays Series
# Task
# Given an array/list [] of integers , Find the product of the k maximal numbers.
# Notes
# Array/list size is at least 3 .
# Array/list's numbers Will be mixture of positives , negatives and zeros
# Repetition of numbers in the array/list could occur.
# Input >> Output Examples
# maxProduct ({4, 3, 5}, 2) ==>  return (20)
# Explanation:
# Since the size (k) equal 2 , then the subsequence of size 2 whose gives product of maxima is 5 * 4 = 20 .
# maxProduct ({8, 10 , 9, 7}, 3) ==>  return (720)
# Explanation:
# Since the size (k) equal 3 , then the subsequence of size 2 whose gives product of maxima is 8 * 9 * 10 = 720 .
# maxProduct ({10, 8, 3, 2, 1, 4, 10}, 5) ==> return (9600)
# Explanation:
# Since the size (k) equal 5 , then the subsequence of size 2 whose gives product of maxima is 10 * 10 * 8 * 4 * 3 = 9600 .
def max_product(numbers, size)
  numbers.sort.last(size).reduce(:*)
end

# Digital cypher 7kyu
# https://www.codewars.com/kata/592e830e043b99888600002d/train/ruby
# Introduction
# Digital Cypher assigns to each letter of the alphabet unique number. For example:
#  a  b  c  d  e  f  g  h  i  j  k  l  m
#  1  2  3  4  5  6  7  8  9  10 11 12 13
#  n  o  p  q  r  s  t  u  v  w  x  y  z
#  14 15 16 17 18 19 20 21 22 23 24 25 26
# Instead of letters in encrypted word we write the corresponding number, eg. The word scout:
#  s  c  o  u  t
# 19  3 15 21 20
# Then we add to each obtained digit consecutive digits from the key. For example. In case of key equal to 1939 :
#   s  c  o  u  t
#  19  3 15 21 20
# + 1  9  3  9  1
#  ---------------
#  20 12 18 30 21
#   m  a  s  t  e  r  p  i  e  c  e
#  13  1 19 20  5 18 16  9  5  3  5
# + 1  9  3  9  1  9  3  9  1  9  3
#  --------------------------------
#  14 10 22 29  6 27 19 18  6  12 8
# Task
# Write a function that accepts str string and key number and returns an array of integers representing encoded str.
# Input / Output
# The str input string consists of lowercase characters only.
# The key input number is a positive integer.
# Example
# Encode("scout",1939);  ==>  [ 20, 12, 18, 30, 21]
# Encode("masterpiece",1939);  ==>  [14,10,22,29,6,27,19,18,6,12,8]
def encode(message, key)
  message.chars.map.with_index { |char, index| char.ord - 96 + key.to_s[index % key.to_s.length].to_i }
end

# Word values 7kyu
# https://www.codewars.com/kata/598d91785d4ce3ec4f000018/train/ruby
# Given a string "abc" and assuming that each letter in the string has a value equal to its position in the alphabet, our string will have a value of 1 + 2 + 3 = 6.
# This means that: a = 1, b = 2, c = 3 ....z = 26.
# You will be given a list of strings and your task will be to return the values of the strings as explained above multiplied by the position of that string in the list.
# For our purpose, position begins with 1.
# nameValue ["abc","abc abc"] should return [6,24] because of [ 6 * 1, 12 * 2 ]. Note how spaces are ignored.
# "abc" has a value of 6, while "abc abc" has a value of 12. Now, the value at position 1 is multiplied by 1 while the value at position 2 is multiplied by 2.
# Input will only contain lowercase characters and spaces.
def wordValue(arr)
  arr.map.with_index { |word, index| word.gsub(' ', '').chars.map { |char| char.ord - 96 }.reduce(:+) * (index + 1) }
end

# Return the first M multiples of N 7kyu
# https://www.codewars.com/kata/593c9175933500f33400003e/train/ruby
# Implement a function, multiples(m, n), which returns an array of the first m multiples of the real number n. Assume that m is a positive integer.
# Ex.
# multiples(3, 5.0)
# should return
# [5.0, 10.0, 15.0]
def multiples(m, n)
  (1..m).map { |num| num * n }
end

# All Inclusive? 7kyu
# https://www.codewars.com/kata/5700c9acc1555755be00027e/train/ruby
# Input:
#     a string strng
#     an array of strings arr
# Output of function contain_all_rots(strng, arr) (or containAllRots or contain-all-rots):
#     a boolean true if all rotations of strng are included in arr (C returns 1)
#    false otherwise (C returns 0)
# Examples:
# contain_all_rots(
#   "bsjq", ["bsjq", "qbsj", "sjqb", "twZNsslC", "jqbs"]) -> true
# contain_all_rots(
#   "Ajylvpy", ["Ajylvpy", "ylvpyAj", "jylvpyA", "lvpyAjy", "pyAjylv", "vpyAjyl", "ipywee"]) -> false)
# Note:
# Though not correct in a mathematical sense
# we will consider that there are no rotations of strng == ""
# and for any array arr: contain_all_rots("", arr) --> true
# Ref: https://en.wikipedia.org/wiki/String_(computer_science)#Rotations
def contain_all_rots(strng, arr)
  return true if strng.empty?
  rotations = []
  strng.chars.each_with_index do |_, index|
    rotations << strng.chars.rotate(index).join
  end
  rotations.all? { |rotation| arr.include?(rotation) }
end

# Longest vowel chain 7kyu
# https://www.codewars.com/kata/59c5f4e9d751df43cf000035/train/ruby
# The vowel substrings in the word codewarriors are o,e,a,io. The longest of these has a length of 2. Given a lowercase string that has alphabetic characters only and no spaces, return the length of the longest vowel substring.
# Good luck!
def solve(s)
  s.scan(/[aeiou]+/).map(&:length).max
end

# Incrementer 7kyu
# https://www.codewars.com/kata/590e03aef55cab099a0002e8/train/ruby
# Given an input of an array of digits num, return the array with each digit incremented by its position in the array. For example, the first digit will be incremented by 1, the second digit by 2 etc. Make sure to start counting your positions from 1 and not 0.
# incrementer([1,2,3]) => [2,4,6]
# Your result can only contain single digit numbers, so if adding a digit with it's position gives you a multiple-digit number, only the last digit of the number should be returned
# incrementer([4,6,9,1,3]) => [5,8,2,5,8]
#   - 9 + 3 (position of 9 in array) = 12
#   - Only its last digit 2 should be returned
# Lastly, return [] if your array is empty! Arrays will only contain numbers so don't worry about checking that.
def incrementer(nums)
  nums.map.with_index { |num, index| (num + index + 1).to_s[-1].to_i }
end

# Split In Parts 7kyu
# https://www.codewars.com/kata/5650ab06d11d675371000003/train/ruby
# The aim of this kata is to split a given string into different strings of equal size (note size of strings is passed to the method)
# Example:
# Split the below string into other strings of size #3
# 'supercalifragilisticexpialidocious'
# Will return a new string
# 'sup erc ali fra gil ist ice xpi ali doc iou s'
# Assumptions:
# String length is always greater than 0
# String has no spaces
# Size is always positive
def split_in_parts(s, part_length)
  s.chars.each_slice(part_length).map(&:join).join(' ')
end

# Folding your way to the moon 7kyu
# https://www.codewars.com/kata/58f0ba42e89aa6158400000e/train/ruby
# Have you heard about the myth that if you fold a paper enough times, you can reach the moon with it? Sure you have, but exactly how many? Maybe it's time to write a program to figure it out.
# You know that a piece of paper has a thickness of 0.0001m. Given distance in units of meters, calculate how many times you have to fold the paper to make the paper reach this distance.
# (If you're not familiar with the concept of folding a paper: Each fold doubles its total thickness.)
# Note: Of course you can't do half a fold. You should know what this means ;P
# Also, if somebody is giving you a negative distance, it's clearly bogus and you should yell at them by returning null (or whatever equivalent in your language. In Shell please return None).
def fold_to(distance)
  return nil if distance < 0
  folds = 0
  thickness = 0.0001
  until thickness >= distance
    thickness *= 2
    folds += 1
  end
  folds
end

# Count all the sheep on farm in the heights of New Zealand 7kyu
# https://www.codewars.com/kata/58e0f0bf92d04ccf0a000010/train/ruby
# Every week (Friday and Saturday night), the farmer and his son count amount of sheep returned to the yard of their farm.
# They count sheep on Friday night, the same goes for Saturday (suppose that sheep returned on Friday are not feeding back on hills on Saturday).
# As sheep are not coming in one flock, you will be given two arrays (one for each night) representing number of sheep as they were returning to the yard during the evenings (entries are positive ints, higher than zero).
# Farmer and his son know the total amount of their sheep, you will be given this number as third parameter.
# Your goal is to calculate the amount of sheep lost (not returned) to the farm after Saturday night counting.
# Example 1: Input: {1, 2}, {3, 4}, 15 --> Output: 5
# Example 2: Input: {3, 1, 2}, {4, 5}, 21 --> Output: 6
def lost_sheep(friday, saturday, total)
  total - friday.sum - saturday.sum
end

# Largest Elements 7kyu
# https://www.codewars.com/kata/53d32bea2f2a21f666000256/train/ruby
# Write a program that outputs the top n elements from a list.
# Example:
# largest(2, [7,6,5,4,3,2,1])
# # => [6,7]
def largest(n, xs)
  xs.sort.reverse.take(n).reverse
end

# Evens and Odds 7kyu
# https://www.codewars.com/kata/583ade15666df5a64e000058/train/ruby
# This kata is about converting numbers to their binary or hexadecimal representation:
# If a number is even, convert it to binary.
# If a number is odd, convert it to hex.
def evens_and_odds(n)
  n.even? ? n.to_s(2) : n.to_s(16)
end

# No oddities here 7kyu
# https://www.codewars.com/kata/51fd6bc82bc150b28e0000ce/train/ruby
# Write a small function that returns the values of an array that are not odd.
# All values in the array will be integers. Return the good values in the order they are given.
def no_odds(values)
  values.select(&:even?)
end

# Drying Potatoes 7kyu
# https://www.codewars.com/kata/58ce8725c835848ad6000007/train/ruby
# All we eat is water and dry matter.
# John bought potatoes: their weight is 100 kilograms. Potatoes contain water and dry matter.
# The water content is 99 percent of the total weight. He thinks they are too wet and puts them in an oven - at low temperature - for them to lose some water.
# At the output the water content is only 98%.
# What is the total weight in kilograms (water content plus dry matter) coming out of the oven?
# He finds 50 kilograms and he thinks he made a mistake: "So much weight lost for such a small change in water content!"
# Can you help him?
# Write function potatoes with
# int parameter p0 - initial percent of water-
# int parameter w0 - initial weight -
# int parameter p1 - final percent of water -
# potatoesshould return the final weight coming out of the oven w1 truncated as an int.
# Example:
# potatoes(99, 100, 98) --> 50
def potatoes(p0, w0, p1)
  w0 * (100 - p0) / (100 - p1)
end

# SevenAte9 7kyu
# https://www.codewars.com/kata/559f44187fa851efad000087/train/ruby
# Write a function that removes every lone 9 that is inbetween 7s.
# seven_ate9('79712312') => '7712312'
# seven_ate9('79797') => '777'
# Input: String Output:  String
def seven_ate9(str)
  str.gsub(/(?<=7)9(?=7)/, '')
end

# Changing letters 7kyu
# https://www.codewars.com/kata/5831c204a31721e2ae000294/train/ruby
# When provided with a String, capitalize all vowels
# For example:
# Input : "Hello World!"
# Output : "HEllO WOrld!"
def swap_vowel_case(str)
  str.tr('aeiouAEIOU', 'AEIOUaeiou')
end

# Tidy Number (Special Numbers Series #9) 7kyu
# https://www.codewars.com/kata/5a87449ab1710171300000fd/train/ruby
# Definition
# A Tidy number is a number whose digits are in non-decreasing order.
# Task
# Given a number, Find if it is Tidy or not .
# Warm-up (Highly recommended)
# Playing With Numbers Series
# Notes
# Number passed is always Positive .
# Return the result as a Boolean
# Input >> Output Examples
# tidyNumber (12) ==> return (true)
# Explanation:
# The number's digits { 1 , 2 } are in non-Decreasing Order (i.e) 1 <= 2 .
# tidyNumber (32) ==> return (false)
# Explanation:
# The Number's Digits { 3, 2} are not in non-Decreasing Order (i.e) 3 > 2 .
# tidyNumber (1024) ==> return (false)
# Explanation:
# The Number's Digits {1 , 0, 2, 4} are not in non-Decreasing Order as 0 <= 1 .
def tidy_number(n)
  n.digits.sort.join.to_i == n
end

# Flatten 7kyu
# https://www.codewars.com/kata/5250a89b1625e5decd000413/train/ruby
# Write a function that flattens an Array of Array objects into a flat Array. Your function must only do one level of flattening.
# flatten [1,2,3] # => [1,2,3]
# flatten [[1,2,3],["a","b","c"],[1,2,3]] # => [1,2,3,"a","b","c",1,2,3]
# flatten [[[1,2,3]]] # => [[1,2,3]]
def flatten(array)
  array.flatten(1)
end

# Find the lucky numbers 7kyu
# https://www.codewars.com/kata/580435ab150cca22650001fb/train/ruby
# Write a function filterLucky/filter_lucky() that accepts a list of integers and filters the list to only include the elements that contain the digit 7.
# For example,
# filter_lucky([1,2,3,4,5,6,7,68,69,70,15,17]) => [7,70,17]
# Don't worry about bad input, you will always receive a finite list of integers.
def filter_lucky(arr)
  arr.select { |num| num.to_s.include?('7') }
end

# Insert dashes 7kyu
# https://www.codewars.com/kata/55960bbb182094bc4800007b/train/ruby
# Write a function insertDash(num)/InsertDash(int num) that will insert dashes ('-') between each two odd numbers in num. For example: if num is 454793 the output should be 4547-9-3. Don't count zero as an odd number.
# Note that the number will always be non-negative (>= 0).
def insert_dash(num)
  num.to_s.gsub(/([13579])(?=[13579])/, '\1-')
end

# All Star Code Challenge #22 7kyu
# https://www.codewars.com/kata/5865cff66b5699883f0001aa/train/ruby
# Create a function called toTime() that takes an integer argument of seconds and converts the value into a string describing how many hours and minutes comprise that many seconds.
# Any remaining seconds left over are ignored.
# Note:
# The string output needs to be in the specific form - "X hour(s) and X minute(s)"
# toTime(3600); // => '1 hour(s) and 0 minute(s)'
# toTime(3601); // => '1 hour(s) and 0 minute(s)'
# toTime(3500); // => '0 hour(s) and 58 minute(s)'
# toTime(323500); // => '89 hour(s) and 51 minute(s)'
# toTime(0); // => '0 hour(s) and 0 minute(s)'
def to_time(seconds)
  hours = seconds / 3600
  minutes = (seconds % 3600) / 60
  "#{hours} hour(s) and #{minutes} minute(s)"
end

# Band name generator 7kyu
# https://www.codewars.com/kata/59727ff285281a44e3000011/train/ruby
# My friend wants a new band name for her band. She like bands that use the formula: 'The' + a noun with first letter capitalized.
# dolphin -> The Dolphin
# However, when a noun STARTS and ENDS with the same letter, she likes to repeat the noun twice and connect them together with the first and last letter, combined into one word like so (WITHOUT a 'The' in front):
# alaska -> Alaskalaska
# europe -> Europeurope
# Complete the function that takes in a noun as a string, and returns her preferred band name written as a string.
def band_name_generator(name)
  name[0] == name[-1] ? name.capitalize + name[1..-1] : 'The ' + name.capitalize
end

# Maximum Gap (Array Series #4)
# https://www.codewars.com/kata/5a7893ef0025e9eb50000013/train/ruby
# Task
# Given an array/list [] of integers , Find The maximum difference between the successive elements in its sorted form.
# Notes
# Array/list size is at least 3 .
# Array/list's numbers Will be mixture of positives and negatives also zeros_
# Repetition of numbers in the array/list could occur.
# The Maximum Gap is computed Regardless the sign.
# Input >> Output Examples
# maxGap ({13,10,5,2,9}) ==> return (4)
# Explanation:
# The Maximum Gap after sorting the array is 4 , The difference between 9 - 5 = 4 .
def max_gap(numbers)
  numbers.sort.each_cons(2).map { |a, b| b - a }.max
end

# Deodorant Evaporator 7kyu
# https://www.codewars.com/kata/5506b230a11c0aeab3000c1f/train/ruby
# This program tests the life of an evaporator containing a gas.
# We know the content of the evaporator (content in ml), the percentage of foam or gas lost every day (evap_per_day)
# and the threshold (threshold) in percentage beyond which the evaporator is no longer useful.
# All numbers are strictly positive.
# The program reports the nth day (as an integer) on which the evaporator will be out of use.
# Example:
# evaporator(10, 10, 5) -> 29
# Note:
# Content is in fact not necessary in the body of the function "evaporator",
# you can use it or not use it, as you wish. Some people might prefer to reason with content,
# some other with percentages only. It's up to you but you must keep it as a parameter because the tests have it as an argument.
def evaporator(content, evap_per_day, threshold)
  threshold = content * threshold / 100.0
  days = 0
  until content <= threshold
    content -= content * evap_per_day / 100.0
    days += 1
  end
  days
end

# Clean up after your dog 7kyu
# https://www.codewars.com/kata/57faa6ff9610ce181b000028/train/ruby
# You have stumbled across the divine pleasure that is owning a dog and a garden.
# Now time to pick up all the cr@p! :D
# Given a 2D array to represent your garden, you must find and collect all of the dog cr@p - represented by '@'.
# You will also be given the number of bags you have access to (bags), and the capactity of a bag (cap).
# If there are no bags then you can't pick anything up, so you can ignore cap.
# You need to find out if you have enough capacity to collect all the cr@p and make your garden clean again.
# If you do, return 'Clean', else return 'Cr@p'.
# Watch out though - if your dog is out there ('D'), he gets very touchy about being watched.
# If he is there you need to return 'Dog!!'.
# For example:
# x=
# [[_,_,_,_,_,_]
# [_,_,_,_,@,_]
# [@,_,_,_,_,_]]
# bags = 2, cap = 2
# return --> 'Clean'
def crap(garden, bags, cap)
  return 'Dog!!' if garden.flatten.include?('D')
  craps = garden.flatten.count('@')
  craps <= bags * cap ? 'Clean' : 'Cr@p'
end

# shorter concat [reverse longer] 7kyu
# https://www.codewars.com/kata/54557d61126a00423b000a45/train/ruby
# Given 2 strings, a and b, return a string of the form: shorter+reverse(longer)+shorter.
# In other words, the shortest string has to be put as prefix and as suffix of the reverse of the longest.
# Strings a and b may be empty, but not null (In C# strings may also be null. Treat them as if they are empty.).
# If a and b have the same length treat a as the longer producing b+reverse(a)+b
def shorter_reverse_longer(a, b)
  a.length >= b.length ? b + a.reverse + b : a + b.reverse + a
end

# V A P O R C O D E 7kyu
# https://www.codewars.com/kata/5966eeb31b229e44eb00007a/train/ruby
# ASC Week 1 Challenge 4 (Medium #1)
# Write a function that converts any sentence into a V A P O R W A V E sentence. a V A P O R W A V E 
# sentence converts all the letters into uppercase, and adds 2 spaces between each letter 
# (or special character) to create this V A P O R W A V E effect.
# Note that spaces should be ignored in this case.
# Examples
#  vaporcode("Lets go to the movies") # => "L  E  T  S  G  O  T  O  T  H  E  M  O  V  I  E  S"
# vaporcode("Why isn't my code working?") # => "W  H  Y  I  S  N  T  M  Y  C  O  D  E  W  O  R  K  I  N  G"
def vaporcode(string)
  string.upcase.gsub(/\s+/, '').chars.join('  ')
end

# Cat and Mouse - Easy Version 7kyu
# https://www.codewars.com/kata/57ee24e17b45eff6d6000164/train/ruby
# You will be given a string (x) featuring a cat 'C' and a mouse 'm'.
# The rest of the string will be made up of '.'.
# You need to find out if the cat can catch the mouse from it's current position.
# The cat can jump over three characters. So:
# C.....m returns 'Escaped!' <-- more than three characters between
# C...m returns 'Caught!' <-- as there are three characters between the two, the cat can jump.
def cat_mouse(x)
  x.length > 5 ? 'Escaped!' : 'Caught!'
end

# By 3, or not by 3? That is the question . . . 7kyu
# https://www.codewars.com/kata/59f7fc109f0e86d705000043/train/ruby
# A trick I learned in elementary school to determine whether or not a number was divisible by three is to add all of the integers in the number together and to divide the resulting sum by three.
# If there is no remainder from dividing the sum by three, then the original number is divisible by three as well.
# Given a series of numbers as a string, determine if the number represented by the string is divisible by three.
# You can expect all test case arguments to be strings representing values greater than 0.
# Example:
# '123' // true
# '8409' // true
# '100853' // false
# '33333333' // true
# '7' // false
def divisible_by_three(str)
  str.chars.map(&:to_i).sum % 3 == 0
end

# Valid Spacing 7kyu
# https://www.codewars.com/kata/5f77d62851f6bc0033616bd8/train/ruby
# Task
# Your task is to write a function called valid_spacing() or validSpacing() which checks if a string has valid spacing.
# The function should return either True or False.
# For this kata, the definition of valid spacing is one space between words, and no leading or trailing spaces.
# Below are some examples of what the function should return.
# 'Hello world' = true
# ' Hello world' = false
# 'Hello world  ' = false
# 'Hello  world' = false
# 'Hello' = true
# Even though there are no spaces, it is still valid because none are needed
# 'Helloworld' = true
# ' ' = false
# '' = true
def valid_spacing(s)
  s == s.split(' ').join(' ')
end

# Find min and max 7kyu
# https://www.codewars.com/kata/57a1ae8c7cb1f31e4e000130/train/ruby
# Implement a function that returns the minimal and the maximal value of a list (in this order).
def get_min_max(seq)
  [seq.min, seq.max]
end

# Stanton measure 7kyu
# https://www.codewars.com/kata/59a1cdde9f922b83ee00003b/train/ruby
# The Stanton measure of an array is computed as follows: count the number of 1s in the array. Let this count be n. The Stanton measure is the number of times that n appears in the array.
# Write a function which takes an integer array and returns its Stanton measure.
# Example:
# The Stanton measure of [1, 4, 3, 2, 1, 2, 3, 2] is 3, because 1 occurs 2 times in the array and 2 occurs 3 times.
def stanton_measure(arr)
  arr.count(arr.count(1))
end

# String Merge! 7kyu
# https://www.codewars.com/kata/597bb84522bc93b71e00007e/train/ruby
# Given two words and a letter, return a single word that's a combination of both words, 
# merged at the point where the given letter first appears in each word. 
# The returned word should have the beginning of the first word and the ending of the second, 
# with the dividing letter in the middle. You can assume both words will contain the dividing letter.
# Examples
# StringMerge("hello", "world", "l")       ==>  "held"
# StringMerge("coding", "anywhere", "n")   ==>  "codinywhere"
# StringMerge("jason", "samson", "s")      ==>  "jasamson"
# StringMerge("wonderful", "people", "e")  ==>  "wondeople"
def string_merge(word1, word2, letter)
  word1[0...word1.index(letter)] + word2[word2.index(letter)..-1]
end

# Difference Of Squares 7kyu
# https://www.codewars.com/kata/558f9f51e85b46e9fa000025/train/ruby
# Find the difference between the sum of the squares of the first n natural numbers (1 <= n <= 100) and the square of their sum.
# Example
# For example, when n = 10:
# The square of the sum of the numbers is:
# (1 + 2 + ... + 10)**2 = 55**2 = 3025
# The sum of the squares of the numbers is:
# 1**2 + 2**2 + ... + 10**2 = 385
# Hence the difference between square of the sum of the first ten natural numbers and the sum of the squares of those numbes is: 3025 - 385 = 2640
def difference_of_squares(n)
  (1..n).sum**2 - (1..n).map { |i| i**2 }.sum
end

# Moves in squared strings (I) 7kyu
# https://www.codewars.com/kata/56dbe0e313c2f63be4000b25/train/ruby
# This kata is the first of a sequence of four about "Squared Strings".
# You are given a string of n lines, each substring being n characters long: For example:
# s = "abcd\nefgh\nijkl\nmnop"
# We will study some transformations of this square of strings.
# Vertical mirror: vert_mirror (or vertMirror or vert-mirror)
# vert_mirror(s) => "dcba\nhgfe\nlkji\nponm"
# Horizontal mirror: hor_mirror (or horMirror or hor-mirror)
# hor_mirror(s) => "mnop\nijkl\nefgh\nabcd"
# or printed:
# vertical mirror   |horizontal mirror
# abcd --> dcba     |abcd --> mnop
# efgh     hgfe     |efgh     ijkl
# ijkl     lkji     |ijkl     efgh
# mnop     ponm     |mnop     abcd
# Task:
# Write these two functions
# and
# high-order function oper(fct, s) where
# fct is the function of one variable f to apply to the string s (fct will be one of vertMirror, horMirror)
# Examples:
# s = "abcd\nefgh\nijkl\nmnop"
# oper(vert_mirror, s) => "dcba\nhgfe\nlkji\nponm"
# oper(hor_mirror, s) => "mnop\nijkl\nefgh\nabcd"
# Note:
# The form of the parameter fct in oper changes according to the language. You can see each form according to the language in "Sample Tests".
# Bash Note:
# The input strings are separated by , instead of \n. The ouput strings should be separated by \r instead of \n. See "Sample Tests".
def vert_mirror(strng)
  strng.split("\n").map(&:reverse).join("\n")
end

def hor_mirror(strng)
  strng.split("\n").reverse.join("\n")
end

def oper(fct, s)
  fct.call(s)
end

# Unlucky Days 7kyu
# https://www.codewars.com/kata/56eb0be52caf798c630013c0/train/ruby
# Friday 13th or Black Friday is considered as unlucky day. Calculate how many unlucky days are in the given year.
# Find the number of Friday 13th in the given year.
# Input: Year as an integer.
# Output: Number of Black Fridays in the year as an integer.
# Examples:
# unluckyDays(2015) == 3
# unluckyDays(1986) == 1
def unlucky_days(year)
  (1..12).count { |month| Time.new(year, month, 13).friday? }
end

# Indexed capitalization 7kyu
# https://www.codewars.com/kata/59cfc09a86a6fdf6df0000f1/train/ruby
# Given a string and an array of integers representing indices, capitalize all letters at the given indices.
# For example:
# capitalize("abcdef",[1,2,5]) = "aBCdeF"
# capitalize("abcdef",[1,2,5,100]) = "aBCdeF". There is no index 100.
# The input will be a lowercase string with no spaces and an array of digits.
# Good luck!
def capitalize(s, ind)
  s.chars.each_with_index.map { |char, i| ind.include?(i) ? char.upcase : char }.join
end

# Find Count of Most Frequent Item in an Array 7kyu
# https://www.codewars.com/kata/56582133c932d8239900002e/train/ruby
# Complete the function to find the count of the most frequent item of an array. You can assume that input is an array of integers.
# For an empty array return 0
# Example
# input array: [3, -1, -1, -1, 2, 3, -1, 3, -1, 2, 4, 9, 3]
# ouptut: 5
# The most frequent number in the array is -1 and it occurs 5 times.
def most_frequent_item_count(collection)
  collection.group_by(&:itself).values.map(&:size).max || 0
end

# Sum of integers in string 7kyu
# https://www.codewars.com/kata/598f76a44f613e0e0b000026/train/ruby
# Your task in this kata is to implement a function that calculates the sum of the integers inside a string. For example, in the string "The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog", the sum of the integers is 3635.
# Note: only positive integers will be tested.
def sum_of_integers_in_string(s)
  s.scan(/\d+/).map(&:to_i).sum
end

# Say hello! 7kyu
# https://www.codewars.com/kata/55955a48a4e9c1a77500005a/train/ruby
# Say hello!
# Write a function to greet a person. Function will take name as input and greet the person by saying hello. 
# Return null/nil if input is empty string or null/nil.
# Example:
# greet("Niks") === "hello Niks!";
# greet("") === null; // Return null if input is empty string
# greet(null) === null; // Return null if input is null
def greet(name)
  return nil if name.nil? || name.empty?
  name ? "hello #{name}!" : nil
end

# Return String of First Characters 7kyu
# https://www.codewars.com/kata/5639bdcef2f9b06ce800005b/train/ruby
# In this exercise, a string is passed to a method and a new string has to be returned with the first character of each word in the string.
# For example:
# "This Is A Test" ==> "TIAT"
def make_string(s)
  s.split.map { |word| word[0] }.join
end

# Drone Fly-By 7kyu
# https://www.codewars.com/kata/58356a94f8358058f30004b5/train/ruby
# The other day I saw an amazing video where a guy hacked some wifi controlled lightbulbs by flying a drone past them. Brilliant.
# In this kata we will recreate that stunt... sort of.
# You will be given two strings: lamps and drone. Lamps represents a row of lamps, currently off, each represented by 'x'. When these lamps are on, they should be represented by 'o'.
# The drone string represents the position of the drone 'T' (any better suggestion for character??) and its flight path up until this point '='. The drone always flies left to right, and always begins at the start of the row of lamps. Anywhere the drone has flown, including its current position, will result in the lamp at that position switching on.
# Return the resulting lamps string. See example tests for more clarity.
# FUNDAMENTALS
def fly_by(lamps, drone)
  lamps[0...drone.length].gsub('x', 'o') + lamps[drone.length..-1]
end

# Nice Array 7kyu
# https://www.codewars.com/kata/59b844528bcb7735560000a0/train/ruby
# A Nice array is defined to be an array where for every value n in the array, there is also an element n-1 or n+1 in the array.
# example:
# [2,10,9,3] is Nice array because
# 2=3-1
# 10=9+1
# 3=2+1
# 9=10-1
# Write a function named isNice/IsNice that returns true if its array argument is a Nice array, else false. You should also return false if input array has no elements.
def is_nice(arr)
  arr.all? { |num| arr.include?(num - 1) || arr.include?(num + 1) } && arr.length > 0
end

# Simple consecutive pairs 7kyu
# https://www.codewars.com/kata/5a3e1319b6486ac96f000049/train/ruby
# In this Kata your task will be to return the count of pairs that have consecutive numbers as follows:
# pairs([1,2,5,8,-4,-3,7,6,5]) = 3
# The pairs are selected as follows [(1,2),(5,8),(-4,-3),(7,6),5]
# --the first pair is (1,2) and the numbers in the pair are consecutive; Count = 1
# --the second pair is (5,8) and are not consecutive
# --the third pair is (-4,-3), consecutive. Count = 2
# --the fourth pair is (7,6), also consecutive. Count = 3.
# --the last digit has no pair, so we ignore.
# More examples in the test cases.
# Good luck!
def pairs(arr)
  arr.each_slice(2).count { |a, b| a && b && (a - b).abs == 1 }
end

# Arithmetic progression 7kyu
# https://www.codewars.com/kata/55caf1fd8063ddfa8e000018/train/ruby
# In your class, you have started lessons about arithmetic progression. Since you are also a programmer, you have decided to write a function that will return the first n elements of the sequence with the given common difference d and first element a. Note that the difference may be zero!
# The result should be a string of numbers, separated by comma and space.
# Example
# # first element: 1, difference: 2, how many: 5
# arithmetic_sequence_elements(1, 2, 5) == "1, 3, 5, 7, 9"
def arithmetic_sequence_elements(a, d, n)
  (1..n).map { |i| a + (i - 1) * d }.join(', ')
end

# Minimum Steps (Array Series #6) 7kyu
# https://www.codewars.com/kata/5a91a7c5fd8c061367000002/train/ruby
# Task
# Given an array of N integers, you have to find how many times you have to add up the smallest numbers in the array until their Sum becomes greater or equal to K.
# Notes:
# List size is at least 3.
# All numbers will be positive.
# Numbers could occur more than once , (Duplications may exist).
# Threshold K will always be reachable.
# Input >> Output Examples
# minimumSteps({1, 10, 12, 9, 2, 3}, 6)  ==>  return (2)
# Explanation:
# We add two smallest elements (1 + 2), their sum is 3 .
# Then we add the next smallest number to it (3 + 3) , so the sum becomes 6 .
# Now the result is greater or equal to 6 , Hence the output is (2) i.e (2) operations are required to do this .
def minimum_steps(numbers, value)
  numbers.sort!
  sum = 0
  numbers.each_with_index do |num, i|
    sum += num
    return i if sum >= value
  end
end

# Sum of all arguments 7kyu
# https://www.codewars.com/kata/540c33513b6532cd58000259/train/ruby
# Calculate the sum of all the arguments passed to a function.
# Note: If any of the arguments is not a finite number the function should return false/False instead of the sum of the arguments.
# For example:
# sum(1,2,3,4)         should return 10
# sum(1, "two", 3)     should return false
# sum(1, 2, [3], NaN)  should return false
def sum_all(*args)
  args.all? { |arg| arg.is_a?(Numeric) } ? args.sum : false
end

# Bingo ( Or Not ) 7kyu
# https://www.codewars.com/kata/5a1ee4dfffe75f0fcb000145/train/ruby
# For this game of BINGO, you will receive a single array of 10 numbers from 1 to 26 as an input.
# Duplicate numbers within the array are possible.
# Each number corresponds to their alphabetical order letter (e.g. 1 = A. 2 = B, etc).
# Write a function where you will win the game if your numbers can spell "BINGO".
# They do not need to be in the right order in the input array). Otherwise you will lose.
# Your outputs should be "WIN" or "LOSE" respectively.
def bingo(arr)
  bingo = 'BINGO'
  arr = arr.map { |num| (num + 64).chr }
  bingo.chars.all? { |letter| arr.include?(letter) } ? 'WIN' : 'LOSE'
end