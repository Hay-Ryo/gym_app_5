class SchedulesController < ApplicationController

  def index
    @schedules = Schedule.all
    @schedules_show = Schedule.page(params[:page]).per(1)
    @schedule = current_user.schedules.build
  end

  def show
    @schedules = Schedule.all
    @schedule = current_user.schedules.build
    @schedule = Schedule.find_by(id: params[:id])
    
  end

  def create
    current_user.schedules.create!(schedule_params)
    @schedules = Schedule.all
    redirect_to schedules_path
  end

  def edit
    @schedule = Schedule.find_by(id: params[:id])
  end
  
  def update
    @schedule = Schedule.find_by(id: params[:id])
    Schedule.find(params[:id]).update(schedule_params)
    if @schedule.save
      redirect_to(schedule_path)
    else
      render(schedule_path)
    end
  end

  def destroy
    @schedule = Schedule.find_by(id: params[:id])
    @schedule.destroy
    flash[:alert]= 'スケジュールを削除しました'
    redirect_to schedules_path
  end

private
  def schedule_params
    params.require(:schedule).permit(:id, :title, :content, :user_id, :user_name, :start_time)
  end

end
