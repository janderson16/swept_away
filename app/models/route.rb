class Route
  attr_reader :start_time,
              :end_time,
              :street,
              :start_point,
              :end_point,
              :side

  def initialize(route_info)
    @start_time = route_info[:starttime]
    @end_time = route_info[:endtime]
    @street = route_info[:street]
    @start_point = route_info[:from]
    @end_point = route_info[:to]
    @side = route_info[:side]
    @week1 = route_info[:week1]
    @week2 = route_info[:week2]
    @week3 = route_info[:week3]
    @week4 = route_info[:week4]
    @week5 = route_info[:week5]
    @mon = route_info[:monday]
    @tues = route_info[:tuesday]
    @weds = route_info[:wednesday]
    @thurs = route_info[:thursday]
    @fri = route_info[:friday]
    @sat = route_info[:saturday]
    @sun = route_info[:sunday]
  end

  # def self.first_mon
  #   routes = BostonService.new.first_mon
  #   routes.map do |route|
  #     Route.new(route)
  #   end
  # end

  def self.search(street, suffix)
    routes = BostonService.new.search(street, suffix)
    routes.map do |route|
      Route.new(route)
    end
  end
end
