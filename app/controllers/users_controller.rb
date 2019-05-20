class UsersController < ApplicationController

    def new 
        @user = User.new
    end 

    def login 
    end 

    def home 
    end 

    def create 
        if @user = User.create(user_params)
            user_params[:password] == user_params[:password_confirmation]
            session[:user_id] = @user.id
            render '/users/home'
            else 
              flash[:alert] = "Wrong USN or PW"
              redirect_to new_user_path
            end 
    end 

    def show
    end 

    private 

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
      end
end 