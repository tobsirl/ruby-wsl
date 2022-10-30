# users array where username and password are stored
users = [
  { username: "paul", password: "password1" },
  { username: "jack", password: "password2" },
  { username: "arya", password: "password3" },
  { username: "jonshow", password: "password4" },
  { username: "heisenberg", password: "password5" }
]



puts "Welcome to the authenticator"
25.times { print "-" }
puts
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"

# We will learn
# Hash, Array, Branching, While loops and designing program execution flow

attempts = 1

while attempts < 4
  print "Please enter your username: "
  name = gets.chomp
  print "Please enter your password: "
  password = gets.chomp

  def authenticate_user(name, password, users)
    users.each do |user|
      if user[:username] = name && user[:password] == password
        puts user
        break
      else
        puts "Credentials were not correct"
        break
      end
    end
  end

  authenticate_user(name, password, users)

  puts "Press q to quit or any other key to continue: "
  input = gets.chomp.downcase

  break if input == "q"

  attempts += 1
end

