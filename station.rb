class Station

  def initialize(name)
    @name = name
    @trains_list = []
  end

  def coming_train(train)
    @trains_list << train
  end

  def all_trains
    @trains_list.each do |train|
  end

  def type.trains(type_trains)
    cargo_trains = @trains_list.select { |train| train.type == :cargo }. size
    passenger_trains = @trains_list.select { |train| train.type == :passenger }.size
    puts "On the station #{name} there are #{passenger_trains} passenger trains and #{cargo_trains} cargo trains."
  end

  def delete.train(train)
    @trains_list.delete(train)
  end
end
