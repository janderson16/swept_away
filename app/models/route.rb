class Route
  attr_reader :start_time,
              :end_time,
              :street,
              :start_point,
              :end_point

  def initialize(route_info)
    @start_time = route_info[:starttime]
    @end_time = route_info[:endtime]
    @street = route_info[:street]
    @start_point = route_info[:from]
    @end_point = route_info[:to]
  end

  def self.first_mon
    routes = BostonService.new.first_mon
    routes.map do |route|
      Route.new(route)
    end
  end
end
