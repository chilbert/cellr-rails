class UsersController < ApplicationController

  def create
    @user = User.create(user_params)
    redirect_to user_path(@user.id)
  end

  def show
    @user = User.find_by(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
