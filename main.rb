address = [1,2,3,4,5,6,7,8,9]
new_address = address.reverse!

def say_hello(thing_to_say)
  puts thing_to_say
end

if __FILE__  == $0
  p address
  p address[5]
  p new_address
  say_hello"Hello"
end