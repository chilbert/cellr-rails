class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  private
     def logged_in?
       !!current_user
     end

     def current_user
       User.find_by(id: session[:user_id]) if session[:user_id]
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
