class Person
  attr_accessor :first_name, :last_name, :age
  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def print_name
    puts "Name: #{@first_name} #{@last_name}"
  end
  
end

puts paul = Person.new("Paul", "Smith", 25)

paul.last_name = "Tobin"

puts paul.print_name