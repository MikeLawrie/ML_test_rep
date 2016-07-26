alph = ("a".."z")
alpharr=alph.to_a
let = 0
vowel=["a","e","i","o","u"]
vown = 0
vow_hash = Hash.new
#untill let > alpharr.length
#end

#alpharr.select 


while  let < alpharr.length 
  while vown < vowel.length
    if alpharr[let] == vowel[vown]
 	  cur_l=alpharr[let]
      vow_hash[cur_l] = let +1
      puts cur_l
    end
 #   print vowel[vown]
 #   print vown
    vown +=1
  end
#  puts alpharr[let]
  let +=1
  vown=0
end

puts vow_hash