class Train 
  attr_accessor :train_route
  attr_reader :train_number
  attr_reader :train_type
  attr_reader :train_speed
  attr_reader :num_carriges

  def initialize(train_number,train_type,number_carriges)
    @train_number = train_number
    @train_type = train_type
    @train_speed = 0
    @number_carriges = number_carriges
    @train_route = []
    @current_station = 0
  end

  def speed_up
    @train_speed += 10 
  end
 
  def speed_down
    @train_speed -= 10
  end

  def add_carrige
    if @train_speed == 0 then
      @number_carriges+=1
      puts "К поезду № #{train_number} прицеплен дополнительный вагон"
    else puts "Поезд должен быть неподвижен"
    end
  end

  def remove_carrige
    if @train_speed == 0 then
      @number_carriges-=1  
      puts "От поезда № #train_number отцеплен один вагон}"
    else puts "Поезд должен быть неподвижен"   
    end
  end


  def move_to_next
    if @current_station<train_route.length 
      then @current_station +=1
      else puts "Поезд находится на конечной станции"
     end   
  end
  
  def show_prev_station
    if @current_station > 0  then 
      prev=@train_route[(@current_station-1)]
      puts "Предыдущая станция #{@train_route[(current_station-1)]}"
     else 
      puts "Поезд находится на первой станции маршрута" 
    end
  end
  
  def show_current_station
    puts "Текущая станция #{train_route[current_station]}"
  cur = train_route[@current_station]
  end
  
  def show_next_station
    if @current_station<@train_route.length then 
      puts "Следующая станция #{@train_route[(current_station+1)]}"
    else
      puts "Поезд находится на конечной станции"
    end
  end  
end