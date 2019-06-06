class PagesController < ApplicationController
  def index
	#@q = Guide.search(params[:q])
#  @guides =  @q.result(distinct: true)
  @guides = Guide.all
  end

end
