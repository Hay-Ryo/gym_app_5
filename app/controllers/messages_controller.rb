class MessagesController < ApplicationController
  
  def create
    @message = current_user.messages.create!(message_params)
    
      redirect_to("/rooms/#{current_user.id}")
    # else
    #   render ("/rooms/#{current_user.id}")
    # end
    # 投稿されたメッセージをチャット参加者に配信
    # ActionCable.server.broadcast 'room_channel',{message: @message.template}
  end

  def destroy
      @message = Message.find_by(id: params[:id])
      @message.destroy
      flash[:alert]='メッセージを削除しました'
      redirect_to("/rooms/#{current_user.id}")
  end

  private
  def message_params
    params.require(:message).permit(:content, :user_name,:user_id,:img)
  end

end

