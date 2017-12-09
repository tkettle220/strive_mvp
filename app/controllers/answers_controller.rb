class AnswersController < ApplicationController
  
  def index
    @answers = Answer.all
    render :index
  end
  
  def create
    @answer = Answer.new(answer_params)
    if @answer.save
      #need to direct to test taking portion
      if params["answer"]["question_id"].to_i == Question.all.length
        redirect_to "/messages/1"
      else
        redirect_to "/questions/" + (params["answer"]["question_id"].to_i + 1).to_s
      end

    else
      flash.now[:errors] = @answer.errors.full_messages
      redirect_to "/questions/" + params["answer"]["question_id"]

    end
  end
  
  private
  
  def answer_params
    params.require(:answer).permit(:answer_text, :question_id, :user_id)
  end
  
  
end
