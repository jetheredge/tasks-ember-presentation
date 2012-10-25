class SubTasksController < ApplicationController
  respond_to :json

  def index
    @sub_tasks = SubTask.find(params[:ids])
    respond_with @sub_tasks
  end

  def show
    render json: SubTask.find(params[:id])
  end

  def create
    task_id = params[:sub_task].delete(:task_id)
    @sub_task = SubTask.new(params[:sub_task])
    @sub_task.task_id = task_id
    @sub_task.save
    respond_with @sub_task
  end

  def update
    @sub_task = SubTask.find(params[:id])
    params[:sub_task].delete(:task_id)
    @sub_task.update_attributes(params[:sub_task])
    respond_with @sub_task
  end

  def destroy
    @sub_task = SubTask.find(params[:id])
    @sub_task.destroy
    respond_with @sub_task
  end
end
