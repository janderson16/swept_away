require "rails_helper"

describe BostonService do

  before(:each) do
    @service = BostonService.new
  end

  it "returns routes on first mon" do

    routes = @service.first_mon
    # binding.pry
    expect(routes.count).to eq(505)
    expect(routes.first[:street]).to eq("Boylston St")

  end

end
