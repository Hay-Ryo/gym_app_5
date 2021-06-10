class MessagesController < ApplicationController
  def create
    @message = current_user.messages.create!(message_params)
  # ********** 以下を追加 **********
    # 投稿されたメッセージをチャット参加者に配信
    ActionCable.server.broadcast 'room_channel',{message: @message.template}
  end

  def destroy
      @message = Message.find_by(id: params[:id])
      @message.destroy
      flash[:alert]='メッセージを削除しました。'
      redirect_to("/rooms/#{current_user.id}")
  end

  def image_create
    @image = current_user.messages.create!(img: params[:img],
    user_id: current_user.id)
    redirect_to message_path
  end

  private
  def message_params
    params.require(:message).permit(:content, :user_name,:user_id,:img)
  end
  def image_params
    params.require(:message).permit(:content,:user_name,:user_id,:img)
  end
  
end

