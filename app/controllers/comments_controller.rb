class CommentsController < ApplicationController
  def create   # Using the create method on @article.comments to create and save the comment. This will automatically link the comment so that it belongs to that particular article.
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article) # Back to original article which renders renders the show.html.erb
  end
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end