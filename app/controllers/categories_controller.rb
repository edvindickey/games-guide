class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find_by(name: params[:id])
    @guides = @category.guides
  end
end
