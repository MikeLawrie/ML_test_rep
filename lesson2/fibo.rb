
fibo=[]
fibo_cur = 1

while fibo_cur < 100
	fibo << fibo_cur
#	fib = fibo[i-1]+fibo[i-2]
#	if fib >=100  
	  fibo_cur= fibo[fibo.size-1]+fibo[fibo.size-2]	
#	 end
end
#if fibo.last > 100 
#	fibo.pop 
#end
p fibo