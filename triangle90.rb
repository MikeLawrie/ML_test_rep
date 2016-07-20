puts "Введи длину стороны a"
a=gets.to_i
puts "Введи длину стороны b"
b=gets.to_i
puts "Введи длину стороны c"
c=gets.to_i
if (a>=b) && (a>=c)
  puts ("ok1")
  if (a**2)==(b**2+c**2)  
		puts ("Прямоугольный")
  end
  if b==c
  		puts ("Равнобедренный")
  end

elsif (b>=a) && (b>=c)
  puts ("ok2")
  if (b**2)==(a**2+c**2)  
		puts ("Прямоугольный")
  end
  if a==c
  		puts ("Равнобедренный")
  end
elsif (c>=a) && (c>=b)
  puts ("ok3")
  if (c**2)==(a**2+b**2)  
		puts ("Прямоугольный")
  end
  if a==b
  		puts ("Равнобедренный")
  end
end  
