class VotesController < ApplicationController

  def create
    if vote.count == 0
    post = post.find(params[:id])
    vote = post.votes.new(votable_id: @post.id, votable_type: post, user_id: current_user.id)
    redirect_to root_url
    else
    end
  end

end
