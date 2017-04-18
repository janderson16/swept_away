class AllRoutesController < ApplicationController
  before_action :authorize!

  def index
    @routes = Route.all_routes
  end
end
