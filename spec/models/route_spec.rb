require "rails_helper"

describe Route do
  describe "#first_mon" do
    it "returns routes on first monday of month" do

      routes = Route.first_mon
      route = routes.first


      expect(route.class).to eq(Route)
      expect(routes.count).to eq(505)
      expect(route.street).to eq("Boylston St")
    end
  end
end
