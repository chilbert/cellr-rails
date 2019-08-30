class BottlePriceController < ApplicationController
  before_action :logged_in_user

  def create

    @comment = Comment.new(comment_params)
    @comment.user_id = params[:user_id]
    @comment.bottle_id = params[:bottle_id]
    binding.pry
    if @comment.save
      redirect_to user_bottle_path(current_user.id, @comment.bottle_id)
    else
      redirect_to root_path
    end
  end

  private

  def set_comment
    @comment = Comment.new
    @bottle = Bottle.find_by(id: params[:bottle_id])
    @user = User.find_by(id: session[:user_id])
  end

  def comment_params
    params.require(:comment).permit(:title, :price, :user_id, :bottle_id)
  end
end
