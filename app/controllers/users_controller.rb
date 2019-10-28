class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :logged_in_user, only: [:edit, :update, :show]
  before_action :correct_user,   only: [:edit, :update, :show]
  before_action :cookie_user, only: [:show, :edit, :update, :destroy]

  def highest_value
    @user = User.highest_value.first
    render :highest_value
  end


  def show
      @user = User.find(params[:id])
    end

    def new
      @user = User.new
    end

    def create
      @user = User.new(user_params)
      if @user.save
        log_in @user
        flash[:success] = "Registration successful"
        redirect_to @user
      else
        render 'new'
      end
    end

    def edit
      @user = User.find(params[:id])
    end

    def update
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def cookie_user
    render json: {id: current_user.id}
  end






  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :name)
  end

  def set_user
    @user = User.find(params[:id])
  end

  def logged_in_user
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

    def correct_user
      @user = User.find(params[:id])
     redirect_to(root_url) unless current_user?(@user)
    end



end
