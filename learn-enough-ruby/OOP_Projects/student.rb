class Student
  attr_accessor :first_name, :last_name, :email, :username

  def initialize(firstname, lastname, username, email, password)
    @first_name = firstname
    @last_name = lastname
    @username = username
    @email = email
    @password = password
  end

  def to_s
    "First name: #{@first_name} Last name: #{@last_name} Username: #{@username} Email: #{@email}"
  end
end

paul = Student.new("Paul", "Nguyen", "paulnguyen", "png@example.com", "password1")
john = Student.new("John", "Smith", "johnsmith", "jsmith@example.com", "password2")

puts paul
puts john