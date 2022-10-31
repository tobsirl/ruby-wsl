class Student
  @first_name
  @last_name
  @email
  @username
  @password

  # setter method
  def first_name=(name)
    @first_name = name
  end
  

  def to_s
    "First name: #{@first_name}"
  end
end

puts paul = Student.new
put paul
paul.first_name = "Paul"
puts paul
