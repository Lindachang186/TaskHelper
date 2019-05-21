class ApplicationController < ActionController::Base

    helper_method :current_user
    protect_from_forgery with: :exception
    private 
    
    def current_user
        @user = User.find_by_id(session[:user_id])
    end 

    def redirect_if_not_logged_in
        redirect_to root_path unless current_user
    end 


end
