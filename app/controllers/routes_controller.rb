class RoutesController < ApplicationController
  before_action :authorize!

  def index
  end

  def show
    @routes = Route.show(params[:id])
  end
end
