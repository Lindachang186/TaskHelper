class TasksController < ApplicationController 

    def create
      task = Task.create(post_params)
      redirect_to task
    end 
    
    private
 
  def post_params
    params.require(:task).permit(:title, :content)
  end

end 