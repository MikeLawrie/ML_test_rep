class Station

  def initialize(station_name)
    @station_name = station_name
    @trains={}
    @number_passanger = 0
    @number_cargo = 0
  end

def receive(train)
  puts "Поезд прибыл"
  @trains={train.train_number => train.train_type}
  if train.train_type == "passanger" then
      @number_passanger += 1
    elsif train.train_type == "cargo" then
      @number_cargo += 1
    end
  end

  def train_list
    puts "На станции #{@station_name} находятся поезда под номерами:" 
    @trains.each {|key, value| puts "#{key}" }  
  end 

  def train_list_type
    puts "На станции #{@station_name} находится #{@number_passanger} пассажирских и #{@number_cargo} грузовых поездов" 
  end

  def departure(train)
     @trains.delete(train.train_number)
     puts "Поезд #{train.train_number} выехал со станции #{@station_name}"
    if train.train_type == "passanger" then
      @number_passanger -= 1
    elsif train.train_type == "cargo" then
      @number_cargo -= 1
    end  
  end
  
end

class Route
  
  attr_reader :route_list

  def initialize
    @route_list=[]
  end 

  def show_first_station
    puts @route_list[0]
  end

  def show_last_station
    puts @route_list.last
  end  

  def add_station(new_station)
    @route_list.push(new_station)
  end

  def del_station(st_del)
    @route_list.delete(st_del)
  end

end

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
      puts "От поезда № #{train_number} отцеплен один вагон"
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