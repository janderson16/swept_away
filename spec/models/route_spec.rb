require "rails_helper"

describe Route do
  describe "#search" do
    it "returns routes on given street" do

      routes = Route.search("Washington", "St")
      route = routes.first


      expect(route.class).to eq(Route)
      expect(routes.count).to eq(45)
      expect(route.street).to eq("Washington St")
      expect(route.start_point).to eq("Corey Rd")
      expect(route.end_point).to eq("Commonwealth Ave")
    end
  end
  
  describe "#all_routes" do
    it "returns all routes" do

      routes = Route.all_routes
      route = routes.first


      expect(route.class).to eq(Route)
      expect(routes.count).to eq(1000)
      expect(route.street).to eq("Ackley Pl")
      expect(route.start_point).to eq("Washington St")
      expect(route.end_point).to eq("Dead End")
    end
  end
end
