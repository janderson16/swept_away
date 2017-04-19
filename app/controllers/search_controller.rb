class SearchController < ApplicationController
  before_action :authorize!

  def index
    @routes = Route.search(params[:q], params[:suffix])
    # @routes = Kaminari.paginate_array(Route.search(params[:q], params[:suffix])).page(params[:page]).per(10)
  end
end
