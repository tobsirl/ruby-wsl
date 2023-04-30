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
