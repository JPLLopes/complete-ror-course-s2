users = [
  { username: "user1", password: "password1" },
  { username: "user2", password: "password2" },
  { username: "user3", password: "password3" },
  { username: "user4", password: "password4" },
  { username: "user5", password: "password5" }
]

# This method loops through the users array and checks if the input provided by the user is correct or not
def auth_user(users, username, password)
  users.each do |user|
    if user[:username] == username && user[:password] == password
      return user
    else
      return "Invalid credentials"
    end
  end
end

# Beginning of the program
puts "Welcome to the authenticator"

25.times { print "-"}
puts

puts "This program will take input from the user and compare the password"
puts "If the username and password combination is correct, it will give back that user's information"
puts

attempts = 0

# Check if the credentials are correct. If they are, show the user information and end the program.
# If not, ask the user if they want to try again by pressing any key other than q.
# The user has 5 attempts
while attempts < 5
  print "Username: "
  username = gets.chomp
  print "Password: "
  password = gets.chomp

  result = auth_user(users, username, password)
  puts result

  if result.is_a?(Hash)
    break
  end

  puts "Press q to quit or any other key to continue"

  pressed_key = gets.chomp.downcase

  if pressed_key == "q"
    break
  end

  attempts += 1
end

puts "You have exceeded the number of attempts" if attempts == 5
