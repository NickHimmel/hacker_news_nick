class VotesController < ApplicationController

  def create
    if logged_in?
      post = Post.find(params[:post_id])
      vote = post.votes.create(votable_id: post.id, votable_type: post, user_id: current_user.id)
      redirect_to root_url
    else
      flash[:danger] = "Please login or create an accout to vote"
      redirect_to root_url
    end
  end

end
