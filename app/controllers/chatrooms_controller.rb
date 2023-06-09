class ChatroomsController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def index
    @chatrooms = Chatroom.all
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end
end
