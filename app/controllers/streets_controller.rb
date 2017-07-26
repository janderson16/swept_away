class StreetsController < ApplicationController
  def create(route)
    binding.pry
    street = Street.find_or_create_by(route[:street])
  end

  private

  def street_params
    params.require(:street).permit(:street_name)
  end
end
