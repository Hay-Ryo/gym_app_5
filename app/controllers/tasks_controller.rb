class TasksController < ApplicationController

  def index
    @task = current_user.tasks.build
    @tasks = Task.includes(:user).all
#タスク数、達成率表示のため
    @tasks_count = current_user.tasks.count.to_f
    @complete = current_user.likes.count.to_f
    @uncomplete = @complete / @tasks_count *100
  end

  def create
    current_user.tasks.create!(task_params)
    @tasks = Task.includes(:user).all
    @tasks_count = current_user.tasks.count.to_f
    @complete = current_user.likes.count.to_f
    @uncomplete = @complete / @tasks_count *100
  end

  def destroy
      @task = Task.find_by(id: params[:id])
      @task.destroy
      flash[:alert]='タスクを削除しました'
      redirect_to("/tasks/")
  end
  
private
  def task_params
    params.require(:task).permit(:id, :title, :content, :user_id, :start_time)
  end

end
