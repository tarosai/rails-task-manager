class TasksController < ApplicationController

  # GET /tasks
  def index
    @tasks = Task.all
  end
   # GET /tasks/:id
   def show
    @task = Task.find(params[:id])
  end
  # GET /tasks/new
  def new
    @task = Task.new
  end
  # POST /tasks
  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path
  end
  # GET /tasks/:id/edit
  def edit
    @task = Task.find(params[:id])
  end
  # PATCH /tasks/:id
  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to tasks_path
  end
  # DELETE /tasks/:id
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private



  def task_params
    params.require(:task).permit(:title)
  end
end
