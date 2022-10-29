simple_hash = { "a" => ["100", "150"], "b" => 200, "c" => 300 }
my_details = { 'name' => 'paul', 'favcolor' => 'red' }
another_hash = { a: 100, b: 200, c: 300 }
puts my_details["favcolor"] # red

# Hashes are also called associative arrays or dictionaries in other languages.
# Hash a.k.a dictionary
puts simple_hash["a"] # => 100
puts another_hash # => 100
puts another_hash.keys
puts another_hash.values

another_hash.each do |key, value|
  puts "The class for key is #{key.class} and the value is #{value.class}"
end