class VotesController < ApplicationController

  def create
    if logged_in?
      post = Post.find(params[:post_id])
      user_vote = current_user.votes.where(votable_id: params[:post_id])
      if user_vote.length == 0
        vote = post.votes.create(votable_id: post.id, votable_type: post, user_id: current_user.id)
        redirect_to root_url
      else
        redirect_to root_url
      end
    else
      flash[:danger] = "Please login or create an accout to vote"
      redirect_to root_url
    end
  end

end
