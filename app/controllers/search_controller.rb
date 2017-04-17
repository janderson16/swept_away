class SearchController < ApplicationController
  def index
    @routes = Route.search(params[:q], params[:suffix])
  end
end
