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

  describe "#show" do
    it "returns one route" do

      routes = Route.show(2656)
      route = routes.first


      expect(route.class).to eq(Route)
      expect(routes.count).to eq(1)
      expect(route.street).to eq("Radnor Rd")
      expect(route.start_point).to eq("Foster St")
      expect(route.end_point).to eq("Kirkwood Rd")
    end
  end

  describe "#days_of_week" do
    it "returns days of week" do

      routes = Route.show(2656)
      route = routes.first


      expect(route.class).to eq(Route)
      expect(routes.count).to eq(1)
      expect(route.street).to eq("Radnor Rd")
      expect(route.start_point).to eq("Foster St")
      expect(route.end_point).to eq("Kirkwood Rd")
    end
  end
end
