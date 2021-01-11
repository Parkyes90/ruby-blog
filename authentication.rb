def auth
  users = [{ username: 'test', password: 'password1' }]

  while true
    puts 'Welcome to the authenticator'
    25.times { print '-' }
    puts
    puts 'This program will take input from the user and compare password'
    puts 'If password is correct, you will get back the user object'
    p 'Username:'
    username = gets.chomp
    p 'Password:'
    password = gets.chomp
    puts 'Press n to quit or any other key to continue:'
    answer = gets.chomp
    if answer == 'n'
      break
    else
      puts "Username: #{username}"
      puts "Password: #{password}"
      is_logged_in =
        users.select do |item|
          item[:username] == username && item[:password] == password
        end.empty?
      if is_logged_in
        puts 'Credentials were not correct'
        break
      else
        puts 'You Logged in '
        break
      end
    end
  end
end
auth if __FILE__ == $0
