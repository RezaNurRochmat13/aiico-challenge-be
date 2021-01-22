class ChatsController < ApplicationController
  def index
    @chats = Message.all
    @chat = Message.new
  end

  def new
    @chat = Message.new
  end

  def create
    @chat = Message.new(chat_params)
    respond_to do |format|
      if @chat.save
        format.html { redirect_to @chat, notice: 'Message was successfully posted.' }
        format.json { render :show, status: :created, location: @chat }
      else
        format.html { render :new }
        format.json { render json: @chat.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def chat_params
      params.require(:chat).permit(:sender, :message)
    end
end
