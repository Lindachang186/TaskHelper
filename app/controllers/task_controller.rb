class TasksController < ApplicationController 

    def index 
      if params[:user_id] && !User.exists?(params[:user_id])
        redirect_to users_path, alert: "User not found."
      else
        Task.all
      end
    end 

    def new 
      if params[:user_id] && !User.exists?(params[:user_id])
        redirect_to users_path, alert: "User not found."
      else
        @task = Task.new(user_id: params[:user_id])
      end
    end 

    def edit 
    end 

    def create
      task = Task.create(post_params)
      redirect_to task
    end 
    
    private
 
  def post_params
    params.require(:task).permit(:title, :content, :user_id)
  end

end 