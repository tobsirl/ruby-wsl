class Student
  attr_accessor :first_name, :last_name, :email
  attr_reader :username

  @first_name
  @last_name
  @email
  @username
  @password

  # setter method
  # def first_name=(name)
  #   @first_name = name
  # end

  # # getter method
  # def first_name
  #   @first_name
  # end

  def to_s
    "First name: #{@first_name}"
  end
end

paul = Student.new
paul.first_name = "Paul"
paul.last_name = "Smith"
puts paul.first_name + " " + paul.last_name
