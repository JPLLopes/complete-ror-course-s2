dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}

# Get city names from the hash
def get_city_names(hash)
  hash.keys
end

# Get area code based on given hash and key
def get_area_code(hash, city)
  hash[city]
end

# Execution flow
loop do
  puts "Do you want to lookup an area code based on a city name? (Y/N)"

  answer = gets.chomp

  break if answer.downcase != "y"

  puts "Which city do you want to lookup the area code for?"
  puts get_city_names(dial_book)
  puts "Enter your selection"
  city = gets.chomp.downcase.gsub(" ", "")

  if dial_book.include?(city)
    puts "The area code for #{city} is #{get_area_code(dial_book, city)}"
  else
    puts "That city does not exist on our list. Please choose an available city."
  end
end