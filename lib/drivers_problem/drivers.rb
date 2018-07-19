class DriversProblem::Drivers
  attr_accessor :name, :trip, :trip_distance, :trip_speed

  @@all = []

  def initialize(name)
    @name = name
    @trip_distance = 0
    @@all << self
    # puts "5-------------5"
  end

  def self.all
    @@all
  end

  def trip_output
    if self.trip
      if self.trip.trip_speed > 5 && self.trip.trip_speed < 100
        puts "#{self.name}: #{self.trip.miles_driven.to_i} miles @ #{self.trip.trip_speed} mph"
      end
      # puts "#{self.name}: #{self.trip.miles_driven.to_i} miles @ #{self.trip.trip_speed} mph"
    else
      puts "#{self.name}: 0 miles"
    end
  end

end
