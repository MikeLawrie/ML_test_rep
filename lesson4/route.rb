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