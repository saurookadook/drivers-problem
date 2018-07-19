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
      # puts "6------ #{info[0]}, #{info[1]} -------6"
      case info[0]
      when "Trip"
        DriversProblem::Trips.new(info)
      when "Driver"
        DriversProblem::Drivers.new(info[1])
      end
    end
  end

  def sort_data
    # @sorted_data = DriversProblem::Drivers.all.sort_by { |driver| driver.trip_distance }.reverse
    @sorted_data = DriversProblem::Drivers.all.sort_by(&:trip_distance).reverse
    # puts "7------ #{@sorted_data[0].name}, #{@sorted_data[1].name}, #{@sorted_data[2].name} -------7"
  end

  def final_output
    @sorted_data.each do |driver|
      driver.trip_output
    end
  end

end
