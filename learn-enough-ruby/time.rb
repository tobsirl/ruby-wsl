# ruby time.rb
# function to get the current time
def get_time
  return Time.now
end

# execute the function
time = get_time
# output the time
puts time

# output the time in a different format
puts time.strftime("%d/%m/%Y %H:%M")

# create a function that prints out a message every 10 seconds
def print_message
  puts "Hello World"
end

# execute the function every 10 seconds
loop do
  print_message
  sleep 10
end
