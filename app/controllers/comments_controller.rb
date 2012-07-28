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
    @comment.commentable_id = params[:link_id]
    @comment.commentable_type = "Link"
    @comment.save

    redirect_to link_path(@comment.commentable_id)

  end

  def show



  end

  def edit
  end
end
