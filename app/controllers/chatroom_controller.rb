class ChatroomController < ApplicationController
  
  def index
    @message = Message.new
  end
  
end
