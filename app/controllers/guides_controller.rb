class GuidesController < ApplicationController
  before_action :authenticate_user!, except: %i[show index]
  before_action :find_guide, only: %i[show edit update destroy]

  def new
    @guide = Guide.new
    @categories = Category.all
  end

  def create
    @categories=Category.find(params[:category_ids])
    @guide = current_user.guides.build(guide_params)
    if @guide.save
      @guide.categories = @categories
      redirect_to guide_path(@guide.id)
    else
      render 'new'
    end
  end

  def edit
    @categories = Category.all
 end

  def update
    redirect_to guide_path(@guide.id) if @guide.update(guide_params)
  end

  def destroy
    @guide.destroy
    redirect_to guides_path
  end

  def show
    @recommended_guides = Guide.random.limit(6)
   end

  def index
    @guides = Guide.all
  end

  private

  def guide_params
    params.require(:guide).permit(:user_id, :title, :hero, :text, pictures:[])
  end

  def find_guide
    @guide = Guide.find(params[:id])
  end

end
