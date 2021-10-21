class AttendsController < ApplicationController
  def index
    @user = current_user
    @attends = Attend.all
    @attends_recently = @user.attends.order(:created_at).last(5)
    @user_name = @user.user_name
    @attends_count = Attend.where(id: @attends).count    
    @month = (Time.current.beginning_of_month..Time.current.end_of_day).to_s
    @year = (Time.current.beginning_of_year..Time.current.end_of_year).to_s
    @month_counts = current_user.attends.where('created_at > ?', @month).count
    @year_counts = current_user.attends.where('created_at > ?', @year).count
  end
  
  def show
    @user = current_user
    @user_name = @user.user_name
    @attends = @user.attends.page(params[:page]).order(created_at: :desc)
    @attends_count = Attend.where(id: @attends).count
    @month = (Time.current.beginning_of_month..Time.current.end_of_day).to_s
    @year = (Time.current.beginning_of_year..Time.current.end_of_year).to_s
    @month_counts = current_user.attends.where('created_at > ?', @month).count
    @year_counts = current_user.attends.where('created_at > ?', @year).count
  end

  def total
    @user = current_user
    @user_name=@user.user_name
# 今日の初めから終わり
    @day = (Time.current.all_day).to_s
# 今月の初めから終わり
    @month = (Time.current.beginning_of_month..Time.current.end_of_day).to_s
# 今年の初めから終わり 
    @year = (Time.current.beginning_of_year..Time.current.end_of_year).to_s
# 今日の参加人数
    # @day_counts= Attend.where('created_at > ?', @day).count
    @day_counts= Attend.where(start_time: Time.current.beginning_of_day..Time.current.end_of_day).count
# 今月の総回数
    @month_counts= @user.attends.where('created_at > ?', @month).count
# 今年の総回数
    @year_counts= @user.attends.where('created_at > ?', @year).count
# 仕様変更 本日の出席者の:user_nameだけを抽出 
    # @day_name= Attend.where('created_at > ?', @day).pluck(:user_name,:created_at)

    @attend_name= Attend.all
  end

  def create
    @user = current_user.id
    @attend = Attend.new(
    user_id: @user,
    user_name: current_user.user_name,
    start_time: Time.current
    )
    if @attend.save
      redirect_to("/attends/#{@user}")
      flash[:notice]='出席しました'
    else
      redirect_to root_path
      flash[:msg]= "営業時間外です"
    end
  end

  def destroy
    @attend = Attend.find_by(id: params[:id])
    @attend.destroy
    flash[:alert]='出席を削除しました'
    redirect_to attend_path
  end

  def detail
    @attend = Attend.find_by(id: params[:id])
  end


end