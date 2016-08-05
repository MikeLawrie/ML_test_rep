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