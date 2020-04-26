class ChatroomController < ApplicationController

  def index
    @message = Message.new
    @messages = Message.search(params[:search])
  end
end
