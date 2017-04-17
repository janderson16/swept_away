class RoutesController < ApplicationController
  def index
    # @routes = Route.all
    @routes = Route.first_mon
    # <++++++++>
    # remove! from the tutorial:
    # @users = User.all
    # @hash = Gmaps4rails.build_markers(@users) do |user, marker|
    #   marker.lat user.latitude
    #   marker.lng user.longitude
    # end
    #   # <=============>
    # all routes for given day in a table?
  end

  def show
    # routes on map for given day
  end
end
