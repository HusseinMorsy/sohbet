class MessagesController < ApplicationController
  before_filter :authenticate_user!, :only => [:new, :create]

  def index
    @messages = Message.all
  end

  def show
    @message = Message.find(params[:id])
  end

  def new
    @message = Message.new
  end

  def create
    @message = current_user.messages.build(params[:message])
    @message.save!
    redirect_to @message, :notice => "Message successfully created"
  end
end
