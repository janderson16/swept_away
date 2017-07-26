require 'rails_helper'

RSpec.describe Street, type: :model do
  describe "#all_streets" do
    it "returns all routes" do

      streets = Street.all_streets
      street = streets.first


      expect(street.class).to eq(Street)
      # expect(streets.count).to eq(1000)
    end
  end
end
