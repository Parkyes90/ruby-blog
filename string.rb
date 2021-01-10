sentence=  "My name is Parkyes90"

first_name = "park"
last_name = "yes"

p sentence

puts first_name + " " + last_name

puts "#{first_name} #{last_name}"

puts first_name.upcase
puts first_name.class
puts first_name.methods
puts "Hi \#{first_name}"

puts "What is your first name?"
first_name = gets.chomp
puts first_name

puts "Enter a number to multiply by 2"
input = gets.chomp.to_i
puts input * 2