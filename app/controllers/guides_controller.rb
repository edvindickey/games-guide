class GuidesController < ApplicationController
  before_action :authenticate_user!, except: %i[show index]
  before_action :find_guide, only: %i[show edit update]
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

  def edit; end

  def update
    redirect_to guide_path(@guide.id) if @guide.update(guide_params)
  end

  def destroy
    @guide.destroy
    redirect_to guides_path
  end

  def show; end

  def index
    @guides = Guide.all
  end

  private

  def guide_params
    params.require(:guide).permit(:user_id, :title, :hero, :text)
  end

  def find_guide
    @guide = Guide.find(params[:id])
  end
end
