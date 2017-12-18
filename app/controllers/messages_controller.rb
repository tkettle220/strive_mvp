class MessagesController < ApplicationController

  def show
    @message = Messsage.find(params[:id])
    render :show
  end

  def create
    action, data = params[:action], params[:data]
    text = action.to_s + " " + data.to_s
    @message = Messsage.new(message_text: text)
    @message.save!
    render :show
  end

end
