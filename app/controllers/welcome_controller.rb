class WelcomeController < ApplicationController

  def home
    messages = Message.all
    @number = messages.length
  end

end