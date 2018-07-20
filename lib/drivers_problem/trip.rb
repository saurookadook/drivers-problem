class DriversProblem::Trip
  attr_accessor :driver, :elapsed_time
  attr_reader :miles_driven, :trip_speed, :trip_output, :trip_time

  @@all = []

  def initialize(arg)
    self.find_driver(arg[1])
    # @elapsed_time = 0
    @trip_speed = 0
    # arg[2] ? self.start_time=(arg[2]) : @start_time = nil
    # arg[3] ? self.end_time=(arg[3]) : @end_time = nil
    arg[4] ? self.miles_driven=(arg[4]) : @miles_driven = 0
    # puts "3-------------3"
    @elapsed_time == nil ? @elapsed_time = self.calculate_time(arg[2], arg[3]) : @elapsed_time += self.calculate_time(arg[2], arg[3])
    # @driver.elapsed_time == nil ? @driver.elapsed_time = self.calculate_time(arg[2], arg[3]) : @driver.elapsed_time += self.calculate_time(arg[2], arg[3])
    # @driver.elapsed_time += self.calculate_time(arg[2], arg[3])
    # self.avg_speed
    # @@all << self
    @driver.trip = self
    if self.avg_speed > 5 && self.avg_speed < 100
      @driver.trip_distance += @miles_driven if @miles_driven
      @driver.total_time += @elapsed_time
    end
    # puts "#{@driver.name} #{@driver.trip_distance} #{@elapsed_time}"
    # @driver.trip_distance += @miles_driven if @miles_driven && (@trip_speed < 5 || @trip_speed > 100)
    # puts "4-------------4"
  end

  # def self.all
  #   @@all
  # end

  def self.update_trip(arg)
    # stuff
  end

  def calculate_time(start_time, end_time)
    # puts "2-------------2"
    @trip_time = (DateTime.parse(end_time).hour*60 + DateTime.parse(end_time).min) - (DateTime.parse(start_time).hour*60 + DateTime.parse(start_time).min)
  end

  def find_driver(arg)
    @driver = DriversProblem::Driver.all.detect { |driver| driver.name == arg }

    @driver ||= DriversProblem::Driver.new(arg)
  end

  # def start_time=(data)
  #   starting = DateTime.parse(data)
  #   @start_time = starting.hour*60 + starting.min
  # end
  #
  # def end_time=(data)
  #   ending = DateTime.parse(data)
  #   @end_time = ending.hour*60 + ending.min
  # end

  def miles_driven=(data)
    @miles_driven = data.to_f
  end

  # def trip_time
  #   @end_time - @start_time
  # end

  def avg_speed
    # puts "1-------------1"
    @trip_speed = ((@miles_driven/@elapsed_time)*60).round
  end

end
