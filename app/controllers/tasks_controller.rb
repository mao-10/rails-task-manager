class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  def index
    # todo
    @tasks = Task.all
  end

  def show
    # todo
    # @task = Task.find(params[:id])
  end

  def new
    # todo
    @task = Task.new
  end

  def create
    # todo
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  def edit
    # todo
    # @task = Task.find(params[:id])
  end

  def update
    # @task = Task.find(params[:id])
    if params[:completed] == '1'
      @task.completed = true
      @task.update(task_params)
    else
      @task.update(task_params)
    end
    redirect_to task_path(@task)
  end

  def destroy
    # @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path, status: :see_other
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
