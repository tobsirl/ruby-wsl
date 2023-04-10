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