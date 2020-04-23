class ChatroomController < ApplicationController

  def index
    @message = Message.new
    @messages = Message.search(params[:search]).order(created_at: "ASC")
  end
end
