class ChatController < ApplicationController
    def all_messages
        messages = Message.all.order(:id)
        render :json => {
            :data => messages
        }
    end

    def create_messages
        create_message = Message.create(
            sender: params[:sender], 
            message: params[:message], 
            file: params[:file])
        render :json => {
           :message => 'Created successfully',
           :data => create_message
        }
    end
end
