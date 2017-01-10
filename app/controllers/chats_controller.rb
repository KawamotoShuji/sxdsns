class ChatsController < ApplicationController
  before_action :set_chat, only: [:edit, :update, :destroy,:show]
  def show
    @message = @chat.messages.build
    @messages = @chat.messages
  end


  def new
    @chat = Chat.new
  end

  def index
    @chats = Chat.all
    @search = Chat.search(params[:search])
  end

  def create
    @chat = Chat.new(chats_params)
    @chat.user_id = current_user.id
    if @chat.save
      redirect_to chats_path, notice: "議題を作成しました！"
    else
      render 'new'
    end
  end

  private
  def chats_params
    params.require(:chat).permit(:title, :body)
  end
  def set_chat
    @chat = Chat.find(params[:id])
  end

end
