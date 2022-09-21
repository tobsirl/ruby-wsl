require 'httparty'

users = HTTParty.get('https://jsonplaceholder.typicode.com/users')

users.each do |user|
  puts user['name']
  puts user['email']
end