class UsersController < ApplicationController
    def login 
    end 

    def home 
    end 

    def new 
        @user = User.new
    end 

    def create 
        @user = User.create(user_params)
        @user.save 
        render '/users/home'
    end 

    def show
    end 

    private 

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
      end
end 