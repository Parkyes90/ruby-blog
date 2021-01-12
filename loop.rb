loop do
  puts 'Do you want?'
  answer = gets.chomp.downcase
  break if answer != 'y'
end
