class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:questions]

    if params[:questions].include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    elsif params[:questions] == 'I am going to work'
      @answer = 'Great!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
