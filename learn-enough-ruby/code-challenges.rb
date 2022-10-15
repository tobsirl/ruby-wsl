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