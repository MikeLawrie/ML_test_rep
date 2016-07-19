puts "Как зовут?"
name = gets.chomp
puts "Какой вес?"
waight = gets.to_i
puts "Какой рост?"
high = gets.to_i
ideal = high - 110
if high <= (waight + 110) 
  puts "#{name}, твой идеальный вес = #{ideal}"
else  
  puts "#{name}, твой вес идеален!"
 end
# puts high - 5
