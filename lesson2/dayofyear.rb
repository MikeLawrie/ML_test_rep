months = [31,28,31,30,31,30,31,31,30,31,30,31]
puts "Введи год"
year = gets.chomp.to_i
puts "Введи месяц"
month = gets.chomp.to_i
puts "Введи день"
day = gets.chomp.to_i
i=0
month-=1
dayofy=0
if (year%4==0) && (year%100!=0)  then 
	months[1]=29 
end
if year%400==0 then
	months[1]=29 
end	
while i<month
  dayofy=dayofy+months[i]
  i+=1
end
dayofy=dayofy+day
puts dayofy