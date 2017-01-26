class PostsController < ApplicationController

  def index
    @posts = Post.all.order(:vote)
  end

  def newest
    @posts = Post.all.order(created_at: :desc)
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.create(post_params)
    if @post == Post.last
      redirect_to root_url
    else
      @errors = @post.errors.full_messages
      render "new"
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to root_url
    else
      @errors = @post.errors.full_messages
      render "edit"
    end
  end

  def destroy
    Post.find(params[:id]).destroy
    flash[:success] = "Post Deleted"
    redirect_to root_url
  end

  private

    def post_params
      params.require(:post).permit(:title, :url, :user_idpos)
    end

end
