class MessagesController < ApplicationController
  
  def show
    @message = Messsage.find(params[:id])
    render :show
  end
end
