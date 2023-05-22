class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]

    if @question.present?
      if @question.downcase == 'i am going to work'
        @answer = 'Great!'
      elsif @question.last == '?'
        @answer = 'Silly question, get dressed and go to work!'
      else
        @answer = "I don't care, get dressed and go to work!"
      end
    else
      @answer = "Please ask a question first."
    end
  end
end
