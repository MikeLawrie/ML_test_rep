puts "Как Вас зовут?"
name = gets.chomp
puts "Каков Ваш вес в кг?"
waight = gets.to_i
puts "Какой рост в см?"
high = gets.to_i
ideal = high - 110
if ideal <= 0 
  puts "#{name}, Ваш идеальный вес = #{ideal} кг"
else  
  puts "#{name}, Ваш вес идеален!"
 end
