puts "Введи a"
a = gets.to_i
puts "Введи b"
b = gets.to_i
puts "Введи c"
c = gets.to_i

d = b**2-4*a*c

if d > 0 
then 
  x1 = ((-1*b)+Math.sqrt(d))/(2*a)
  puts "x1=#{x1}"
  x2 = ((-1*b)-Math.sqrt(d))/(2*a)
  puts "x2=#{x2}"
elsif d==0
  x1 = ((-1*b)+Math.sqrt(d))/(2*a)
  puts "x1=x2=#{x1}"
elsif d<0
  puts "Корней нет"
end
    
