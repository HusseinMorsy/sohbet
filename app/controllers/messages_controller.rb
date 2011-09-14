class MessagesController < ApplicationController
  before_filter :authenticate_user!, :only => [:new, :create]

  def index
    @messages = Message.all
  end

  def new
    @message = Message.new
  end

  def create
    @message = current_user.messages.build(params[:message])
    @message.save!
    redirect_to messages_url, :notice => "Message successfully created"
  end
end
