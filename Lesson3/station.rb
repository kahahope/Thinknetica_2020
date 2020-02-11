class Station
  attr_reader :name :trains

  def initialize(name)
    @name = name
    @trains = []
  end

  def coming_train(train)
    @trains << train
  end

  def type_trains(type_trains)
    @trains.select { |train| train.type_trains == type_trains }
  end

  def send_train(train)
    @trains.delete(train)
  end
end
