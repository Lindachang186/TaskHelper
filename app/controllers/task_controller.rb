class TasksController < ApplicationController 

    def new 
      @task = Task.new(user_id: params[:user_id])
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