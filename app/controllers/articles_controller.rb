class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params[:article])

    if @article.save
      flash[:notice] = "New article created."
      redirect_to(:action => 'index')
    else
      render(:action => 'new')
    end
  end

  def comment
    @comment = Comment.new
  end

  def post_comment
    @comment = Comment.new(params[:comment])

    if @comment.save
      flash[:notice] = "New comment created."
      redirect_to(:action => 'index')
    end
  end

  def destroy
    @article = Article.find(params[:id])
    success = @article.destroy

    if success
      redirect_to :action => :index
      flash[:notice] = "Article deleted."
    end
  end

  def feedback
    @feedback = Feedback.new
  end

  def post_feedback
    flash[:notice] = "Feedback sent."
    redirect_to(:action => 'index')
  end
end
