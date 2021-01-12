require 'bcrypt'

class Student
  attr_accessor :first_name, :last_name, :email, :username, :password
  def initialize(first_name, last_name, email, username, password)
    @first_name = first_name
    @last_name = last_name
    @username = username
    @email = email
    @password = BCrypt::Password.create(password)
  end

  def to_s
    "First name: #{@first_name}"
  end
end

student1 = Student.new('test1', 'last', 'email', 'username', 'password1')
puts student1

puts student1.first_name
puts student1.last_name
puts student1.email
puts student1.username
puts student1.password == 'password1'
