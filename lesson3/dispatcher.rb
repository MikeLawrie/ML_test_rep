class Station
  def initialize(station_name)
    @station_name = station_name
    @trains={}
    @n_pass = 0
    @n_cargo = 0
  end

def receive(train)
  puts "Поезд прибыл"
  @trains={train.train_number => train.train_type}
  if train.train_type == "pass" then
      @n_pass += 1
    elsif train.train_type == "cargo" then
      @n_cargo += 1
    end
  end

  def train_list
    puts "На станции #{@station_name} находятся поезда под номерами:" 
    @trains.each {|key, value| puts "#{key}" }  
  end 

  def train_list_type
    puts "На станции #{@station_name} находится #{@n_pass} пассажирских и #{@n_cargo} грузовых поездов" 
  end

  def train_out(train)
     @trains.delete(train.train_number)
     puts "Поезд #{train.train_number} выехал со станции #{@station_name}"
    if train.train_type == "pass" then
      @n_pass -= 1
    elsif train.train_type == "cargo" then
      @n_cargo -= 1
    end  
  end
end

class Route
  attr_reader :station_list

  def initialize
    @station_list=[]
  end 

  def show_first_station
    puts @station_list[0]
  end
  def show_last_station
    puts @station_list.last
  end    
  def add_station(new_station)
#доработать возможно будут добавлять промежут. станцию
    @station_list.push(new_station)
  end
  def del_station(st_del)
    @station_list.delete(st_del)
  end

end

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