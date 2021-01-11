def multiply(first, second)
  first.to_f * second.to_f
end

def branches(flag)
  if flag
    puts 'true'
  else
    puts 'false'
  end
end

if __FILE__ == $0
  puts multiply(1, 3)
  branches(true)
  puts 'end'
end
