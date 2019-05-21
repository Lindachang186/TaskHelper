class UsersController < ApplicationController
  before_action :redirect_if_not_logged_in, only: [:show, :home]
  
    def new 
        @user = User.new
    end 

    def login 
    end 

    def home 
      
    end 

    def create 
      @user = User.create(user_params)

      if @user.valid?
          @user.save 
          session[:user_id] = @user.id
          render '/users/home'
      else 
        render '/users/signin'
      end 


    end 

    def show
      render '/users/home'
    end 

    private 

    def user_params
      params.require(:user).permit(:name, :password, :password_confirmation)
    end

end 