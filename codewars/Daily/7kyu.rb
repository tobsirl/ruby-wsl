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