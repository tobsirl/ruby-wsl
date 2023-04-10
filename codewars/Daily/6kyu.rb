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
