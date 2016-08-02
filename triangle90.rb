puts "Введите длину стороны a"
a=gets.to_i
puts "Введите длину стороны b"
b=gets.to_i
puts "Введите длину стороны c"
c=gets.to_i

if (a>b) && (a>c)
  if (a**2)==(b**2+c**2)  
		puts "Треугольник прямоугольный"
  end
  if b==c
  		print "и равнобедренный"
  end
elsif (b>a) && (b>c)
  if (b**2)==(a**2+c**2)  
		puts "Треугольник прямоугольный"
  end
  if a==c
  		print "и равнобедренный"
  end
elsif (c>a) && (c>b)
  if (c**2)==(a**2+b**2)  
		puts "Треугольник прямоугольный"
  end
  if a==b
  		print "и равнобедренный"
  end
end  
