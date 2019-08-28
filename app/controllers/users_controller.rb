class UsersController < ApplicationController


  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
       flash[:success] = "Welcome to Cellr."
      redirect_to @user
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :name)
  end
end
