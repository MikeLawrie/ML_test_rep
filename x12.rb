puts "Введи a"
a = gets.to_i
puts "Введи b"
b = gets.to_i
puts "Введи c"
c = gets.to_i
x1 = ((-1*b)+Math.sqrt(b**2-4*a*c))/(2*a)
puts ("x1=#{x1}")
x2 = ((-1*b)-Math.sqrt(b**2-4*a*c))/(2*a)
puts ("x2=#{x2}")