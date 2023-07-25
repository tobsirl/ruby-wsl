# +1 Array (6 kyu)
# Given an array of integers of any length, return an array that has 1 added to the value represented by the array.
# the array can't be empty
# only non-negative, single digit integers are allowed
# Return nil (or your language's equivalent) for invalid inputs.
# Examples
# For example the array [2, 3, 9] equals 239, adding one would return the array [2, 4, 0].
# [4, 3, 2, 5] would return [4, 3, 2, 6]
# [1, 2, 3, 9] would return [1, 2, 4, 0]
# [9, 9, 9, 9] would return [1, 0, 0, 0, 0]
# [0, 1, 3, 7] would return [0, 1, 3, 8]
# [0, 0, 0, 0] would return [0, 0, 0, 1]
# [0, 4, 3] would return [0, 4, 4]
def up_array(arr)
  return nil if arr.empty? || arr.any? { |n| n < 0 || n > 9 }
  arr.compact.join.to_s.to_i
end

puts up_array([0, 4, 3])

# Take a Ten Minutes Walk 6kyu
# You live in the city of Cartesia where all roads are laid out in a perfect grid. 
# You arrived ten minutes too early to an appointment, so you decided to take the opportunity to go for a short walk. 
# The city provides its citizens with a Walk Generating App on their phones -- 
# everytime you press the button it sends you an array of one-letter strings representing directions to walk (eg. ['n', 's', 'w', 'e']). 
# You always walk only a single block in a direction and you know it takes you one minute to traverse one city block, 
# so create a function that will return true if the walk the app gives you will take you exactly ten minutes 
# (you don't want to be early or late!) and will, of course, return you to your starting point. 
# Return false otherwise. Note: you will always receive a valid array containing a random assortment of direction letters 
# ('n', 's', 'e', or 'w' only). It will never give you an empty array (that's not a walk, that's standing still!).
def is_valid_walk(walk)
  walk.count('n') == walk.count('s') && walk.count('e') == walk.count('w') && walk.length == 10
end

# Consonant value 6kyu
# https://www.codewars.com/kata/59c633e7dcc4053512000073/train/ruby
# Given a lowercase string that has alphabetic characters only and no spaces, return the highest value of consonant substrings.
# Consonants are any letters of the alpahabet except "aeiou".
# We shall assign the following values: a = 1, b = 2, c = 3, .... z = 26.
# For example, for the word "zodiacs", let's cross out the vowels. We get: "z o d ia cs"
# -- The consonant substrings are: "z" , "d" , "cs" and the values are z = 26,d = 4,cs = 3 + 19 = 22. The highest is 26.
# solve("zodiacs") = 26
# For the word "strength", solve("strength") = 57
# -- The consonant substrings are: "str" and "ngth" with values str = 19 + 20 + 18 = 57 and ngh = 14 + 7 + 8 = 29. 
# The highest is 57.
def solve(s)
  s.split(/[aeiou]/).map { |word| word.chars.map { |char| char.ord - 96 }.sum }.max
end

# Decipher this!
# https://www.codewars.com/kata/581e014b55f2c52bb00000f8/train/ruby
# You are given a secret message you need to decipher. Here are the things you need to know to decipher it:
# For each word:
# the second and the last letter is switched (e.g. Hello becomes Holle)
# the first letter is replaced by its character code (e.g. H becomes 72)
# Note: there are no special characters used, only letters and spaces
# Examples
# decipherThis('72olle 103doo 100ya'); // 'Hello good day'
# decipherThis('82yade 115te 103o'); // 'Ready set go'
def decipher_this(string)
  string.split.map do |word|
    word.gsub(/\d+/) { |num| num.to_i.chr }.
    gsub(/^(.)(.)(.*)(.)$/, '\1\4\3\2')
  end.join(' ')
end

# Reverse every other word in the string 6kyu
# https://www.codewars.com/kata/58d76854024c72c3e20000de/train/ruby
# Reverse every other word in a given string, then return the string.
# Throw away any leading or trailing whitespace, while ensuring there is exactly one space between each word.
# Punctuation marks should be treated as if they are a part of the word in this kata.
def reverse_alternate(string)
  string.split.map.with_index { |word, index| index.odd? ? word.reverse : word }.join(' ')
end

# Delete occurrences of an element if it occurs more than n times 6kyu
# https://www.codewars.com/kata/554ca54ffa7d91b236000023/train/ruby
# Enough is enough!
# Alice and Bob were on a holiday. Both of them took many pictures of the places they've been,
# and now they want to show Charlie their entire collection. However, Charlie doesn't like this sessions,
# since the motive usually repeats. He isn't fond of seeing the Eiffel tower 40 times. He tells them that he will only sit during the session
# if they show the same motive at most N times. Luckily, Alice and Bob are able to encode the motive as a number.
# Can you help them to remove numbers such that their list contains each number only up to N times, without changing the order?
# Task
# Given a list lst and a number N, create a new list that contains each number of lst at most N times without reordering.
# For example if N = 2, and the input is [1,2,3,1,2,1,2,3], you take [1,2,3,1,2],
# drop the next [1,2] since this would lead to 1 and 2 being in the result 3 times, and then take 3,
# which leads to [1,2,3,1,2,3].
def delete_nth(order, max_e)
  order.each_with_object([]) do |num, arr|
    arr << num unless arr.count(num) >= max_e
  end
end

# Multiplication table 6kyu
# https://www.codewars.com/kata/534d2f5b5371ecf8d2000a08/train/ruby
# Your task, is to create NxN multiplication table, of size provided in parameter.
# for example, when given size is 3:
# 1 2 3
# 2 4 6
# 3 6 9
# for given example, the return value should be: [[1,2,3],[2,4,6],[3,6,9]]
def multiplication_table(size)
  (1..size).map { |num| (1..size).map { |n| n * num } }
end

# Reverse or rotate? 6kyu
# https://www.codewars.com/kata/56b5afb4ed1f6d5fb0000991/train/ruby
# The input is a string str of digits. Cut the string into chunks (a chunk here is a substring of the initial string)
# of size sz (ignore the last chunk if its size is less than sz).
# If a chunk represents an integer such as the sum of the cubes of its digits is divisible by 2, reverse that chunk;
# otherwise rotate it to the left by one position. Put together these modified chunks and return the result as a string.
# If
# sz is <= 0 or if str is empty return ""
# sz is greater (>) than the length of str it is impossible to take a chunk of size sz hence return "".
# Examples:
# revrot("123456987654", 6) --> "234561876549"
# revrot("123456987653", 6) --> "234561356789"
# revrot("66443875", 4) --> "44668753"
# revrot("66443875", 8) --> "64438756"
# revrot("664438769", 8) --> "67834466"
def revrot(str, sz)
  return '' if sz <= 0 || sz > str.size
  str.scan(/.{#{sz}}/).map do |chunk|
    chunk.chars.map(&:to_i).sum % 2 == 0 ? chunk.reverse : chunk[1..-1] + chunk[0]
  end.join
end

# Linked Lists - Length & Count 6kyu
# https://www.codewars.com/kata/55beec7dd347078289000021/train/ruby
# Linked Lists - Length & Count
# Implement Length() to count the number of nodes in a linked list.
# length(null) === 0
# length(1 -> 2 -> 3 -> null) === 3
# Implement Count() to count the occurrences of an integer in a linked list.
# count(null, 1) === 0
# count(1 -> 2 -> 3 -> null, 1) === 1
# count(1 -> 2 -> 3 -> null, 3) === 1
def length(node)
  return 0 if node.nil?
  1 + length(node.next)
end

def count(node, data)
  return 0 if node.nil?
  (node.data == data ? 1 : 0) + count(node.next, data)
end

# Array Helpers 6kyu
# https://www.codewars.com/kata/525d50d2037b7acd6e000534/train/ruby
# This kata is designed to test your ability to extend the functionality of built-in ruby classes.
# In this case, we want you to extend the built-in Array class with the following methods:
# square(), cube(), average(), sum(), even() and odd().
# Explanation:
# square() must return a copy of the array, containing all values squared, the original array must not be changed
# cube() must return a copy of the array, containing all values cubed, the original array must not be changed
# average() must return the average of all array values, average() on an empty array must return NaN
# sum() must return the sum of all array values
# even() must return an array of all even numbers, the original array must not be changed
# odd() must return an array of all odd numbers, the original array must not be changed
class Array
  def square
    map { |num| num**2 }
  end

  def cube
    map { |num| num**3 }
  end

  def average
    sum / size.to_f
  end

  def sum
    reduce(:+)
  end

  def even
    select(&:even?)
  end

  def odd
    select(&:odd?)
  end
end

# Array Deep Count 6kyu
# https://www.codewars.com/kata/596f72bbe7cd7296d1000029/train/ruby
# You are given an array. Complete the function that returns the number of ALL elements within an array, including any nested arrays.
# Examples
# []          ==> 0
# [1,2,3]     ==> 3
# ["x", "y", ["z"]]  ==> 4
# [1, 2, [3, 4, [5]]] ==> 7
def deep_count(a)
  a.map { |el| el.is_a?(Array) ? deep_count(el) + 1 : 1 }.sum
end