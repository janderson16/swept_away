class Route
  attr_reader :start_time,
              :end_time,
              :street,
              :start_point,
              :end_point,
              :side,
              :week1,
              :week2,
              :week3,
              :week4,
              :week5,
              :sun,
              :mon,
              :tues,
              :weds,
              :thurs,
              :fri,
              :sat,
              :mainid


  def initialize(route_info)
    @start_time = route_info[:starttime]
    @end_time = route_info[:endtime]
    @street = route_info[:street]
    @start_point = route_info[:from]
    @end_point = route_info[:to] != "Dead End" ? route_info[:to] : "End of Street"
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
    @mainid = route_info[:mainid]
  end

  def self.search(street, suffix)
    routes = BostonService.new.search(street, suffix)
    routes.map do |route|
      Route.new(route)
    end
  end

  def self.all_routes
    routes = BostonService.new.all_routes
    routes.map do |route|
      Route.new(route)
    end
  end

  def self.show(id)
    routes = BostonService.new.show(id)
    routes.map do |route|
      Route.new(route)
    end
  end

  def days_of_week
    return "M " if mon == "True"
    return "Tu " if tues == "True"
    return "W " if weds == "True"
    return "Th " if thurs == "True"
    return "F " if fri == "True"
    return "Sa " if sat == "True"
    return "Su " if sun == "True"
  end

  def weeks_of_month
    return "1st" if week1 == "True"
    return "2nd" if week2 == "True"
    return "3rd" if week3 == "True"
    return "4th" if week4 == "True"
    return "5th" if week5 == "True"
  end

end
