class UsersController < ApplicationController
    def login 
    end 

    def home 
    end 

    def new 
        @user = User.new
    end 

    def create 
        User.create(user_params)
    end 

    def show
    end 

    private 

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
      end
end 