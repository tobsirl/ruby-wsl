simple_hash = { "a" => ["100", "150"], "b" => 200, "c" => 300 }
my_details = { 'name' => 'paul', 'favcolor' => 'red' }
another_hash = { a: 100, b: 200, c: 300 }
puts my_details["favcolor"] # red

# Hashes are also called associative arrays or dictionaries in other languages.
# Hash a.k.a dictionary
puts simple_hash["a"] # => 100
puts another_hash # => 100
puts another_hash.keys