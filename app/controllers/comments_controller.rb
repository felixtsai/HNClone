class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end


  def new
    @comment = Comment.new

  end

  def create
    @comment = Comment.new(params[:comment])
    @comment.user_id = current_user.id
    @comment.save

    redirect_to link_path(@comment.link_id)

  end

  def show



  end

  def edit
  end
end
