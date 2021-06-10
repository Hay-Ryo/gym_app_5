class LikesController < ApplicationController
  before_action :set_like
  
  def create
    Like.create!(user_id: current_user.id, task_id: params[:id])
    @tasks_count = current_user.tasks.count.to_f
    @complete = current_user.likes.count.to_f
    @uncomplete = @complete / @tasks_count *100
  end

  def destroy
    Like.find_by(user_id: current_user.id, task_id: params[:id]).destroy
    @tasks_count = current_user.tasks.count.to_f
    @complete = current_user.likes.count.to_f
    @uncomplete = @complete / @tasks_count *100
  end

private
  def set_like
  @task = Task.find(params[:id])
  end

end