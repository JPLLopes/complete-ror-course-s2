#Functions
def add(x, y)
  x.to_f + y.to_f
end

def subtract(x, y)
  x.to_f - y.to_f
end

def multiply(x, y)
  x.to_f * y.to_f
end

def divide(x, y)
  x.to_f / y.to_f
end

def modulus(x, y)
  x.to_f % y.to_f
end

# Execution
puts "Simple Calculator"
25.times { print"-" }
puts

puts "What do you want to do?"
puts "Enter 1 to add, 2 to subtract, 3 to multiply, 4 to divide and 5 for the remained of the division"

puts "Enter the first number"
first_number = gets.chomp

puts "Enter the second number"
second_number = gets.chomp

option = gets.chomp

case option
when "1"
  puts "You have chosen to add the numbers"
  puts "The result is #{add(first_number, second_number)}"
when "2"
  puts "You have chosen to subtract the numbers"
  puts "The result is #{subtract(first_number, second_number)}"
when "3"
  puts "You have chosen to multiply the numbers"
  puts "The result is #{multiply(first_number, second_number)}"
when "4"
  puts "You have chosen to divide the numbers"
  puts "The result is #{divide(first_number, second_number)}"
when "5"
  puts "You have chosen to compute the remainder of the division"
  puts "The result is #{modulus(first_number, second_number)}"
else
  puts "Invalid entry"
end