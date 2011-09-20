class MeetingsController < ApplicationController


  def index
    @meetings = Meeting.all
  end

  def show
    @meeting = Meeting.find(params[:id])
  end

  def new
    @meeting = Meeting.new
  end

  def create
    @meeting = current_user.meetings.build(params[:meeting])
    @meeting.save!
    redirect_to @meeting, :notice => "Meeting successfully created"
  end

end
