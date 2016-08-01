class Station
	def initialize(st_name)
		@st_name = st_name
	  @trains={}
    @n_pass = 0
    @n_cargo = 0
  end
	def receive(tr_number,tr_type)
		puts "Поезд прибыл"
    @trains={tr_number => tr_type}
    if tr_type == pass then
      @n_pass += 1
    elsif tr_type == cargo then
      @n_cargo += 1
    end
	end
	def train_list
    puts "В станции #{@st_name} находятся поезда под номерами:" 
    @trains.each {|key, value| puts "#{key}" }	
	end		
	def train_list_type
    puts "В станции #{@st_name} находится #{n_pass} пассажирских и #{n_cargo} грузовых поездов" 
	end
	def train_out(tr_number)
     @trains.delete(tr_number)
     puts "Поезд #{tr_number} выехал со станции #{st_name}"
    if @trains[tr_number] == pass then
      @n_pass -= 1
    elsif @trains[tr_number] == cargo then
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
  attr_accessor :tr_route
  attr_reader :tr_number
  attr_reader :tr_type
  attr_reader :tr_speed
  attr_reader :num_carriges

  def initialize(tr_number,tr_type,num_carriges)
    @tr_number = tr_number
    @tr_type = tr_type
    @tr_speed = 0
    @num_carriges = num_carriges
    @tr_route = []
    @cur_st = 0
  end

	def speed_up(tr_speed)
    @tr_speed = tr_speed
	end
 
  def speed_down
    @tr_speed=0
  end

  def add_carrige
    if @tr_speed == 0 then
      @num_carriges+=1
    else puts "Поезд должен быть неподвижен"
    end

  end
  def remove_carrige
    if @tr_speed == 0 then
      @num_carriges-=1  
    else puts "Поезд должен быть неподвижен"   
    end
  end

#  def get_route(tr_route)
#    @tr_route=tr_route
#  end

  def move_st
    if @cur_st<tr_route.length 
      then @cur_st +=1
      else puts "Поезд находится на конечной станции"
     end   
  end
  def prev_stat
    if @cur_st>0  then 
      prev=@tr_route[(@cur_st-1)]
      puts "Предыдущая станция #{@tr_route[(cur_st-1)]}"
    end
  end
  def cur_stat
    puts "Текущая станция #{tr_route[cur_st]}"
  cur = tr_route[@cur_st]
  end
  def next_stat
    if @cur_st<@tr_route.length then 
      puts "Следующая станция #{@tr_route[(cur_st+1)]}"
    end
  end  
end