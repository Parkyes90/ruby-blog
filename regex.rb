def regex_test1
  cat_regex_result1 = /cat/ =~ "dog and cat"
  cat_regex_result2 = /cat/ =~ "cats"
  cat_regex_result3 = /cat/ =~ "Cat"
  puts cat_regex_result1, cat_regex_result2, cat_regex_result3
end

def regex_test_2
  File.foreach("io/testfile")&.with_index do |line, index|
    puts "#{index}: #{line} include on" if line =~ /on/
  end
  File.foreach("io/testfile")&.with_index do |line, index|
    puts "#{index}: #{line} exclude on" if line !~ /on/
  end
end


if __FILE__  == $0
  regex_test_2
end