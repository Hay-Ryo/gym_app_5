class RoomsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @users=User.all
    @user= current_user
  end

  def show
      # 投稿一覧表示に利用
      @messages = Message.includes(:user).order(:id).last(10)
      # メッセージ投稿に利用
      @message = current_user.messages.build
    end

  def show_additionally
    last_id = params[:oldest_message_id].to_i - 1
    @messages = Message.includes(:user).order(:id).where(id: 1..last_id).last(10)
  end
end
