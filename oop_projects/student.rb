require_relative 'authentication'

class Student
  include Authentication
  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(firstname, lastname, username, email, password)
    @first_name = firstname
    @last_name = lastname
    @username = username
    @email = email
    @password = password
  end

  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, Username: #{@username}, Email address: #{@email}"
  end

end

john = Student.new("John", "Doe", "john1", "john1@example.com", "password2")
hashed_password = john.create_hash_digest(john.password)

puts hashed_password