class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:user][:email])
    user = user.try(:authenticate, params[:user][:password])
    return redirect_to(controller: 'sessions', action: 'new')
    flash.now[:danger] = 'Invalid email/password combination'
    render 'new' unless user
    session[:user_id] = user.id
    @user = user
    redirect_to controller: 'static', action: 'home'
  end

  def destroy
    session.delete :user_id
    redirect_to '/'
  end

end
