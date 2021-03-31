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
    @article = Article.new
  end

  def create
    # Creates new Article model to save the database
    @article = Article.new(article_params)
    # Saves to db
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  # Updates articles
  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

  private
  # Requires params (form inputs) and prevents mass assignment
    def article_params
      params.require(:article).permit(:title, :text)
    end
end
