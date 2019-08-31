class SessionsController < ApplicationController

  def new
  end

  def create

  if auth_params
    user = User.create_with_omniauth(auth_params)
    session[:user_id] = user.id
    redirect_to user_bottles_path(user.id)
  else
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user_bottles_path(user.id)
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end
end

  def destroy
    log_out
    redirect_to root_url
  end

  private

  def auth_params
    request.env['omniauth.auth']
  end
end
