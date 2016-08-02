fibo = []
fibo[0]=0.to_i
fibo[1]=1.to_i

fibo_current = 1

while fibo_current < 100
	fibo << fibo_current
	  fibo_current= fibo[fibo.size-1]+fibo[fibo.size-2]	
end

puts fibo