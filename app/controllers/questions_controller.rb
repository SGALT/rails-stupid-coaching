class QuestionsController < ApplicationController
  def ask; end

  def answer
    @user_input = params[:user_input]
    if @user_input != 'I am going to work' && @user_input.include?('?')
      @answer = 'Silly question get dressed and go to work !'
    elsif @user_input != 'I am going to work' && @user_input.include?('!')
      @answer = 'I appreciate your motivation, but get dressed and go to work !'
    elsif @user_input != 'I am going to work'
      @answer = "I don't care !! Get dressed and go to work !!"
    else
      @answer = 'Great!'
    end
  end
end
