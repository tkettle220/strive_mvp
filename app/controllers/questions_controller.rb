class QuestionsController < ApplicationController
  
  def show
    @user = current_user
    @question = Question.find(params[:id])
    render :show
  end
end
