shoping = Hash.new 
name = "v"
while name != "стоп".to_s
  puts "Введи название товара, либо стоп"
  name = gets.chomp.to_s
  if name != "стоп".to_s then
    puts "Введи цену"
    price = gets.chomp.to_i
    puts "Введи количество"
    number = gets.chomp.to_i
    shoping[name] = {price=>number}
  end
end
puts shoping