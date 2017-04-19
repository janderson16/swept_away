class SearchController < ApplicationController
  before_action :authorize!

  def index
    @routes = Route.search(params[:q], params[:suffix])
    # @routes.page(params[:page])
  end
end
