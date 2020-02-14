class Train

attr_reader :number :type :route :current_station
attr_accessor :speed :wagons

def initialize(number, type, wagons)
  @number = number
  @type = type
  @wagons = wagons
  @speed = 0
end

def current_speed
  @speed
  puts "Current speed of train #{number} is #{speed}."
end

def add_speed (add_speed)
  @speed += add_speed
end

def stop
  self.speed = 0
end

def current_station(station)
  @current_station = current_station
  station.take_train(self)
end

def add_wagon
  if speed == 0
    @wagons += 1
    puts "Added 1 wagon to the train #{number}."
  else
    puts "It's impossible to add wagons. The train must be stopped."
  end
end

def dell_wagon
  if speed == 0 && wagons > 0
    @wagons -= 1
    puts "One wagon was unhooked from the train #{number}."
  elsif @wagons == 0
    puts "There are no wagons on the train #{number}."
  else
    puts "It's impossible to unhooke wagons. The train must be stopped."
  end
end

def route(route)
  @route = route
  @station = @route.route[0]
  station.take_train(self)
  @current_station_index = 0
end

def next_station
  current_station_index = route.stations.index(current_station)
  route.stations[current_station_index + 1]
end

def prev_station
  current_station_index = route.stations.index(current_station)
  route.stations[current_station_index - 1]
end

def move_forward
  station = next_station
  current_station.send_train(self)
  station.take_train(self)
end

def move_backward
  station = prev_station
  current_station.send_train(self)
  station.take_train(self)
end
