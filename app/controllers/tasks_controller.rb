class TasksController < ApplicationController
  before_action :require_user_logged_in
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:destroy]
  
  
  def new
    @task = Task.new
  end
  
  
  def create
    @task = current_user.tasks.build(task_params)
    if @task.save
      flash[:success] = 'Task was posted successfully'
      redirect_to root_url
      #@task = tasks/:id
    else
      @tasks = current_user.microposts.order('created_at DESC').page(params[:page])
      flash.now[:danger] = 'Task was not posted'
      render 'toppages/index'
    end
    
  end
  
  
  def edit
  end
  
  
  def update
    
    if @task.update(task_params)
      flash[:success] = 'Task was updated successfully'
      redirect_to @task
    else
      flash.now[:danger] = 'Task was not updated'
      render :edit
    end
  end
  
  
  def destroy
    @task.destroy
    
    flash[:success] = "Task was deleted successfully"
    redirect_to tasks_url
  end

  private
  
  def set_task
    @task = Task.find(params[:id])
  end
  
  def task_params
    params.require(:task).permit(:content, :status)
  end

  def correct_user
    @task = current_user.tasks.find_by(id: params[:id])
    unless @task
      redirect_to root_url
    end
  end
end
