class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.create(message_params)
    if @message.save
      ActionCable.server.broadcast 'chatroom_channel', body: @message.body
    end
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end
end
