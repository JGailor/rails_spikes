class TasksController < ApplicationController
  def index
    @tasks = Task.find(:all)
  end
  
  def update
    task = Task.find(params[:id])
    
    if task
      task.update_attributes(params[:task])
      render :json => task.to_json
    else
      render :text => "", :status => 404
    end
  end
end
