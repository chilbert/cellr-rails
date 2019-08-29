class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :new, :create]

  def show

  end

  def new

  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = params[:user_id]
    @comment.bottle_id = params[:bottle_id]
    if @comment.save
      redirect_to user_bottle_comment_path(@comment.user_id, @comment.bottle_id, @comment.id)
    else
      render :new
    end
  end

  private

  def set_comment
    @comment = Comment.find_by(id: params[:id]) || Comment.new
    @bottle = Bottle.find_by(id: params[:bottle_id])
    @user = User.find_by(id: session[:user_id])
  end

  def comment_params
    params.require(:comment).permit(:name, :description)
  end
end
