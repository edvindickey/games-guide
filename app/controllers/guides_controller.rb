class GuidesController < ApplicationController
  before_action :authenticate_user!, except: [:show,:index]

  def new
    @guide = Guide.new
  end

  def create
    @guide = current_user.guides.build(guide_params)
    if @guide.save
      redirect_to guide_path(@guide.id)
    else
      render 'new'
    end
  end

  def edit
  end

  def show
    @guide = Guide.find(params[:id])
  end

  def index
  end

  private

  def guide_params
    params.require(:guide).permit(:user_id, :title, :hero, :text)
  end
end
