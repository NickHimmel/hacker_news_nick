class VotesController < ApplicationController

  def create
      post = Post.find(params[:post_id])
      vote = post.votes.create(votable_id: post.id, votable_type: post, user_id: current_user.id)
      redirect_to root_url
  end

end
