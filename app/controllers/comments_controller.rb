class CommentsController < ApplicationController

  def index
  end

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
    @comments = @post.comments
  end

  def create
      @post = Post.find(params[:post_id])
      @comment = current_user.comments.new(comment_params)
      @comment.post_id = params[:post_id]
      if @comment.save
        redirect_to "new"
      else
        @errors = @comment.errors.full_messages
        render "new"
      end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end

end
