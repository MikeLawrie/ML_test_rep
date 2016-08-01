class Train 
  attr_accessor :train_route
  attr_reader :train_number
  attr_reader :train_type
  attr_reader :train_speed
  attr_reader :num_carriges

  def initialize(train_number,train_type,num_carriges)
    @train_number = train_number
    @train_type = train_type
    @train_speed = 0
    @num_carriges = num_carriges
    @train_route = []
    @cur_st = 0
  end

  def speed_up
    @train_speed += 10 
  end
 
  def speed_down
    @train_speed -= 10
  end

  def add_carrige
    if @train_speed == 0 then
      @num_carriges+=1
      puts "К поезду № #{train_number} прицеплен дополнительный вагон"
    else puts "Поезд должен быть неподвижен"
    end

  end
  def remove_carrige
    if @train_speed == 0 then
      @num_carriges-=1  
      puts "От поезда № #train_number отцеплен один вагон}"
    else puts "Поезд должен быть неподвижен"   
    end
  end


  def move_st
    if @cur_st<train_route.length 
      then @cur_st +=1
      else puts "Поезд находится на конечной станции"
     end   
  end
  def prev_stat
    if @cur_st>0  then 
      prev=@tr_route[(@cur_st-1)]
      puts "Предыдущая станция #{@train_route[(cur_st-1)]}"
    end
  end
  def cur_stat
    puts "Текущая станция #{train_route[cur_st]}"
  cur = train_route[@cur_st]
  end
  def next_stat
    if @cur_st<@train_route.length then 
      puts "Следующая станция #{@train_route[(cur_st+1)]}"
    end
  end  
end