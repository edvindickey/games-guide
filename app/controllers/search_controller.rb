class SearchController < ApplicationController
  def index
	@q = Guide.search(params[:q])
  @guides =  @q.result(distinct: true)
  end
end
