shoping = Hash.new 
name = "v"
sum=0
while name != "стоп".to_s
  puts "Введите название товара, либо стоп"
  name = gets.chomp.to_s
  if name != "стоп".to_s then
    puts "Введите цену за единицу товара"
    price = gets.chomp.to_f
    puts "Введите количество товара"
    number = gets.chomp.to_f
    shoping[name] = {price=>number}
    sum=sum+(price*number)
  end
end
puts shoping
puts sum
