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
