class MessagesController < ApplicationController

  def create
    if Entry.where(user_id: current_user.id, room_id: params[:message][:room_id]).present?
      @message = Message.create(message_params)
    else
      flash[:alert] = "メッセージ送信に失敗しました。"
    end
    @roomID = @message.room_id
    @room = Room.find_by(id: @roomID)
    @messages =  @room.messages
    @message = Message.new
  end

  private
  def message_params
    params.require(:message).permit(:user_id, :content, :room_id).merge(user_id: current_user.id)
  end
end
