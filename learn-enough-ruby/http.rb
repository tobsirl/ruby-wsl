require 'httparty'
require 'dotenv/load'

users = HTTParty.get('https://jsonplaceholder.typicode.com/users')

users.each do |user|
  puts "Name: #{user['name']} - Email: #{user['email']}"
end
puts "Env: #{ENV['TEST']}"

response = HTTParty.get('http://api.stackexchange.com/2.2/questions?site=stackoverflow')

if response.code == 200
  puts response.message
end