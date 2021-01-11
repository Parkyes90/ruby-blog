a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
puts a.length
a << 10
print a
puts a.last
puts a.first
a.unshift('Test')
a.append('Test')
print(a)
print a.uniq
puts a.empty?
b = []
puts b.empty?
puts a.include?('Test')
print a.select { |el| el == 'Test' }
