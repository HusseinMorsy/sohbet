class CommentsController < ApplicationController

  before_filter :authenticate_user!

  def new
    @comment = Comment.new(:message => current_message)
  end

  def create
    @comment = Comment.new(params[:comment])
    @comment.message = current_message
    @comment.user = current_user
    @comment.save
    redirect_to messages_url, :notice => "Thank you for the comment"
  end

  private

  def current_message
    Message.find(params[:message_id])
  end
end
