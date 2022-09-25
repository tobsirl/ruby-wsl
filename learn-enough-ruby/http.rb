require 'httparty'
require 'dotenv/load'

users = HTTParty.get('https://jsonplaceholder.typicode.com/users')

users.each do |user|
  puts "Name: #{user['name']} - Email: #{user['email']}"
end
puts "Env: #{ENV['TEST']}"