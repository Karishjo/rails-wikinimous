class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  def index
    @articles = Article.all
  end

  def new
    @articles = Article.new
  end

  def create
    @articles = Article.new(article_params)
    @articles.save
    redirect_to articles_path(@article)
  end

  def show
  end

  def edit
  end

  def update
    @articles.update(article_params)
    redirect_to articles_path(@article)
  end

  def destroy
    @articles.destroy
    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end

  def set_article
    @articles = Article.find(params[:id])
  end
end
