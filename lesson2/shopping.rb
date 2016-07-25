shoping = Hash.new 
name = "v"
sum=0
while name != "стоп".to_s
  puts "Введи название товара, либо стоп"
  name = gets.chomp.to_s
  if name != "стоп".to_s then
    puts "Введи цену"
    price = gets.chomp.to_i
    puts "Введи количество"
    number = gets.chomp.to_f
    shoping[name] = {price=>number}
    sum=sum+(price.to_f*number.to_f)
  end
end
puts shoping
puts sum
