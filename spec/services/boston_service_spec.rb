require "rails_helper"

describe BostonService do

  before(:each) do
    @service = BostonService.new
  end

  it "returns routes on certain street" do

    routes = @service.search("Washington", "St")

    expect(routes.count).to eq(45)
    expect(routes.first[:street]).to eq("Washington St")
    expect(routes.first[:from]).to eq("Corey Rd")
    expect(routes.first[:to]).to eq("Commonwealth Ave")
  end
  it "returns all routes" do

    routes = @service.all_routes

    expect(routes.count).to eq(1000)
    expect(routes.first[:street]).to eq("Ackley Pl")
    expect(routes.first[:from]).to eq("Washington St")
    expect(routes.first[:to]).to eq("Dead End")
  end
end
