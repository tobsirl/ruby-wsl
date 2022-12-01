"10 20".split(' ').include?("15") ? "US" : "EU"
"10 20".split(' ')

empty_hash = {}

('a'..'z').zip((1..26).to_a).each do |i, c|
  empty_hash[i] = c
end

puts empty_hash

puts "abcdef".each_char.map { |c| empty_hash[c] }.reduce(:+)
