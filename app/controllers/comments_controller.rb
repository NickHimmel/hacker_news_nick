class CommentsController < ApplicationController

  def index
  end

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(post_params)
    if current_user.comments.create(post_params)
      redirect_to root_url
    else
      @errors = @comment.errors.full_messages
      render "new"
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  private

  def post_params
    params.require(:comment).permit(:title, :url)
  end

end
