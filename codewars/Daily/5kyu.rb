# What's a Perfect Power anyway? (5 kyu)
# https://www.codewars.com/kata/54d4c8b08776e4ad92000835
# A perfect power is a classification of positive integers:
# In mathematics, a perfect power is a positive integer that can be expressed as an integer power of another positive integer. More formally, n is a perfect power if there exist natural numbers m > 1, and k > 1 such that mk = n.
# Your task is to check wheter a given integer is a perfect power. If it is a perfect power, return a pair m and k with mk = n as a proof. Otherwise return Nothing, Nil, null, NULL, None or your language's equivalent.
# Note: For a perfect power, there might be several pairs. For example 81 = 3^4 = 9^2, so (3,4) and (9,2) are valid solutions. However, the tests take care of this, so if a number is a perfect power, return any pair that proves it.
# Examples
# Test.describe("perfect powers") do
#   Test.it("should work for some examples") do
#     Test.assert_equals(isPP(4), [2,2], "4 = 2^2")
#     Test.assert_equals(isPP(9), [3,2], "9 = 3^2")
#     Test.assert_equals(isPP(5), nil, "5 isn't a perfect number")
#   end
# end
def isPP(n)
  (2..Math.sqrt(n)).each do |i|
    (2..n).each do |j|
      if i**j == n
        return [i, j]
      elsif i**j > n
        break
      end
    end
  end
  nil
end

# Sum of Pairs (5 kyu)
# https://www.codewars.com/kata/54d81488b981293527000c8f
# Given a list of integers and a single sum value, return the first two values (parse from the left please) in order of appearance that add up to form the sum.
# sum_pairs([11, 3, 7, 5],         10)
# #              ^--^      3 + 7 = 10
#   == [3, 7]
# sum_pairs([4, 3, 2, 3, 4],         6)
# #          ^-----^         4 + 2 = 6, indices: 0, 2 *
# #             ^-----^      3 + 3 = 6, indices: 1, 3
# #                ^-----^   2 + 4 = 6, indices: 2, 4
# #  * entire pair is earlier, and therefore is the correct answer
#   == [4, 2]
# sum_pairs([0, 0, -2, 3], 2)
# #  there are no pairs of values that can be added to produce 2.
#   == None/nil/undefined (Based on the language)
# sum_pairs([10, 5, 2, 3, 7, 5],         10)
# #              ^-----------^   5 + 5 = 10, indices: 1, 5
# #                    ^--^      3 + 7 = 10, indices: 3, 4 *
# #  * entire pair is earlier, and therefore is the correct answer
#   == [3, 7]
# Negative numbers and duplicate numbers can and will appear.
# NOTE: There will also be lists tested of lengths upwards of 10,000,000 elements. Be sure your code doesn't time out.
def sum_pairs(ints, s)
  seen = {}
  ints.each do |i|
    return [s - i, i] if seen[s - i]
    seen[i] = true
  end
  nil
end
