class Street < ApplicationRecord
  attr_reader :street_name

  def initialize(street)
    @street_name = street
  end

  def self.all_streets
    routes = BostonService.new.all_routes
    routes.map do |route|
      street = Street.new(route[:street])
      binding.pry
      street.save
    end
  end
end
