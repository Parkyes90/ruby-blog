sample_hash = { 'a' => 1, 'b' => 2, 'c' => 3 }
my_details = { 'name' => 'test', 'color' => 'red' }
puts my_details['name']
puts sample_hash['123']

another_hash = { a: 1, b: 2, c: 3 }
puts another_hash[:a]

another_hash.each { |key, value| p key, value }
