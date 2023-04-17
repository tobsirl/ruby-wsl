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