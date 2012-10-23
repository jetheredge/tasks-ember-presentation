class TasksController < ApplicationController
  respond_to :json

  def index
    respond_with Task.order('created_at').all
  end

  def show
    render json: Task.find(params[:id])
  end

  def create
    @task = Task.new(params[:task])
    @task.save
    respond_with @task
  end

  def update
    @task = Task.find(params[:id])
    @task.update_attributes(params[:task])
    respond_with @task
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    respond_with @task
  end
end
