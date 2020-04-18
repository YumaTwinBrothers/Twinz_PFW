class MessagesController < ApplicationController
  # before_action :require_user

  def create
    message = Message.new(message_params)
    if message.save
      ActionCable.server.broadcast "chatroom_channel",
                                    mod_message: message_render(message)
    end
  end

  private

  def message_params
    params.require(:message).permit(:body, :username)
  end

  def message_render(message)
    render(partial: 'message', locals: {message: message})
  end

end
