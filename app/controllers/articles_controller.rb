class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: %i[show index]
  before_action :find_article, only: %i[show edit update destroy]

  def new
    @article = Article.new
    @categories = Category.all
  end

  def create
      @article = current_user.articles.build(article_params)
    if @article.save
        redirect_to article_path(@article.id)
    else
      render 'new'
    end
  end

  def edit; end

  def update
    redirect_to article_path(@article.id) if @article.update(article_params)
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  def show
    @recommended_articles = Article.random.limit(6)
  end

  def index
    @articles = Article.all
  end

  private

  def article_params
    params.require(:article).permit(:user_id, :title, :body, pictures:[])
  end

  def find_article
    @article = Article.find(params[:id])
  end

end
