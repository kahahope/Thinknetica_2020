class Route
  attr_reader :first_station :last_station :stations

  def initialize(first_station, last_station)
    @stations = [first_station, last_station]
    @first_station = first_station
    @last_station = last_station
  end

  def add_station(station)
    if @stations.include?(station)
      puts "The station #{station} is on the list already."
    else
      @stations.insert(-2, station)
      puts "The station #{station} added on the list."
    end
  end

  def delete_station(station)
    if station == @first_station
      puts "The station #{station} is initial, cannot be deleted."
    elsif station == @last_station
      puts "The station #{station} is terminal, cannot be deleted."
    else
      @station.delete(station)
      puts "The station #{station} deleted from the list."
    end
  end

  def show_list_stations
    puts "The list of stations #{stations}."
  end
end
