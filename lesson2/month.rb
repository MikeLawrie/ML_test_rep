year = {
	"Jan" => 31, 
	"Feb" => 28,
	"March" => 31,
	"Apr" => 30,
	"May" => 31,
	"June" => 30,
	"July" => 31,
	"Aug" => 31,
	"Sep" => 30,
	"Oct" => 31,
	"Nov" => 30,
	"Dec" => 31
}
year.each do |m,d| 
   if d%30 == 0; puts m
   end
end
