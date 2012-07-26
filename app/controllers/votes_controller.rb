class VotesController < ApplicationController
  def new

  @vote = Vote.new


  end

  def edit
  end

  def create
    @vote = Vote.new(params[:vote])
    @vote.user_id = current_user.id
    @vote.save
    redirect_to links_path
  end

  def update
  end
end
