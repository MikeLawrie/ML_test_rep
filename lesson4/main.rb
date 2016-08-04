require_relative 'station'
require_relative 'route'
require_relative 'train'


t1 = Train.new(14,"cargo",8)
r1 = Route.new
r1.add_station("Zhukovo")
s1 = Station.new("Zhukovo")
s1.receive(t1)
s1.train_list
s1.train_list_type
s1.train_out(t1)
s1.train_list
s1.train_list_type
r1.route_list

t1.speed_up
t1.train_speed
t1.speed_up
t1.speed_up


puts t1.train_speed
t1.speed_down
puts t1.train_speed
t1.add_carrige
t1.speed_down
t1.speed_down
puts t1.train_speed
t1.add_carrige

hash_stat = {"Zhukovo" => s1}
hash_stat["Zhukovo"].train_list