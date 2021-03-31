# Note on controllers: Only public methods can be actions for controllers

class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  # Show action
  def show 
    @article = Article.find(params[:id])
  end

  def new
  end

  def create
    # Creates new Article model to save the database
    @article = Article.new(article_params)
    # Saves to db
    @article.save
    redirect_to @article
  end

  private
  # Requires params (form inputs) and prevents mass assignment
    def article_params
      params.require(:article).permit(:title, :text)
    end
end
