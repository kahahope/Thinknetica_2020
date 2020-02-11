class Train

attr_reader :number :type :route :current_station
attr_accessor :speed :wagon

def initialize(number, type, wagon)
  @number = number
  @type = type
  @wagon = wagon
  @route = []
  @current_station = current_station
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

def add_wagon
  if speed == 0 @wagon += 1
    puts "Added 1 wagon to the train #{number}."
  else
    puts "It's impossible to add wagons. The train must be stopped."
  end

def dell_wagon
  if speed == 0 && wagon > 0 @wagons -= 1
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
  station.arrive(self)
  @current_station_index = 0
end

def next_station
  station = @route.route[@current_station_index + 1]
  station.arrive(self)
end

def prev_station
  station = @route.route[@current_station_index - 1]
  station.arrive(self)
end
