require 'spec_helper'

describe CommentsController do

  def valid_attributes
    Factory.attributes_for(:comment)
  end

  let(:message) { mock_model(Message).as_null_object }
  let(:current_user) { Factory(:user) }

  before do
    Message.stub(:find).and_return(message)
    sign_in current_user
    controller.stub(:current_user).and_return(current_user)
  end

  describe "GET new" do
    it "requires a logged in user" do
      sign_out :user
      get :new, :message_id => message.id
      response.should redirect_to(new_user_session_url)
    end

    it "assigns a new comment as @comment" do
      get :new, :message_id => message.id
      assigns(:comment).should be_a_new(Comment)
    end

    it "assigns the message as @comment.message" do
      get :new, :message_id => message.id
      assigns(:comment).message.should == message
    end
  end

  describe "POST create" do
    it "requires a logged in user" do
      sign_out :user
      post :create, :message_id=> message.id, :comment => valid_attributes
      response.should redirect_to(new_user_session_url)
    end

    it "creates a new Comment" do
      expect {
        post :create, :message_id=> message.id, :comment => valid_attributes
      }.to change(Comment, :count).by(1)
    end

    it "assigns a newly created comment as @comment" do
      post :create, :message_id => message.id, :comment => valid_attributes
      assigns(:comment).should be_a(Comment)
      assigns(:comment).should be_persisted
    end

    it "redirects to the created comment" do
      post :create, :message_id => message.id, :comment => valid_attributes
      response.should redirect_to(messages_url)
    end

    it "sets flash[:info]" do
      post :create, :message_id => message.id, :comment => valid_attributes
      flash[:notice].should_not be_empty
    end

    it "assigns the message as @comment.message" do
      post :create, :message_id => message.id, :comment => valid_attributes
      assigns(:comment).message.should == message
    end

    it "assigns the current user as @comment.user" do
      post :create, :message_id => message.id, :comment => valid_attributes
      assigns(:comment).user.should == current_user
    end
  end
  
end
