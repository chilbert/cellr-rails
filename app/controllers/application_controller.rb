class ApplicationController < ActionController::Base

    before_action :logged_in?
    
  private
     def logged_in?
       !!current_user
     end

     def current_user
       User.find_by(id: session[:user_id]) if session[:user_id]
     end
end
