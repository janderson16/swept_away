class AllRoutesController < ApplicationController
  before_action :authorize!

  def index
    @routes = Kaminari.paginate_array(Route.all_routes).page(params[:page]).per(10)
  end
end
