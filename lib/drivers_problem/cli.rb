class DriversProblem::CLI
  attr_accessor :data, :sorted_data

  def call
    # puts "Please feed me your data..."
    # @data = gets.split("\n").map {|line| line.split(" ")}
    @data = STDIN.read.split("\n").map {|line| line.split(" ")}

    # ARGV.each do |b|
    #     puts b
    # end
    # @data = STDIN.gets
    making_objects
    sort_data
    final_output
  end

  def making_objects
    @data.each do |info|
      if info.length > 2
        DriversProblem::Trips.new(info)
      else
        DriversProblem::Drivers.new(info[1])
      end
    end
  end

  def sort_data
    # @sorted_data = DriversProblem::Drivers.all.sort_by { |driver| driver.trip_distance }.reverse
    @sorted_data = DriversProblem::Drivers.all.sort_by(&:trip_distance).reverse
  end

  def final_output
    @sorted_data.each do |driver|
      driver.trip_output
    end
  end

end
