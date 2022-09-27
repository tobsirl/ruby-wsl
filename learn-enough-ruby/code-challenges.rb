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