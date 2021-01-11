puts 1 + 2
nil
puts 10 / 4.0
20.times { print '-' }
puts 'hello'.to_i

def print_operations
  operations = [
    1 + 2,
    1 * 2,
    1 / 2,
    1 - 2,
    1 % 2,
    20.to_f,
    22.odd?,
    22.even?,
    1 == 2,
    3 == 3,
    5 && 6,
    5 || 6,
    rand(10),
    5.to_s
  ]

  operations.each { |x| puts x }
end

print_operations if __FILE__ == $0
