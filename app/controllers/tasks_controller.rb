class TasksController < ApplicationController 
  before_action :set_user, only: [:new, :show, :create, :edit, :update, :destroy]

    def index 
        @tasks = Task.all
    end 

    def new 
        @task = Task.new
        @task.statuses.new
    end 

    def create 
      @task = Task.create(post_params)
    end 

    def show 
      
    end 

    def edit 
    end 

    def create
      task = Task.create(post_params)
      redirect_to task
    end 
    
    private

    def set_user 
      if params[:user_id] && !User.exists?(params[:user_id])
        redirect_to users_path, alert: "User not found."
      else 
        @user = params[:user_id]
      end 
    end 
 
  def post_params
    params.require(:task).permit(:title, :content, :user_id)
  end

end 