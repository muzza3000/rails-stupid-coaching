class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question =  params["question"] if params["question"]
    @response = coach_answer(@question)
  end

  private

  def coach_answer(question)
    if question.strip[-1] == "?"
      return "Silly question, get dressed and go to work!"
    elsif question.upcase == "I AM GOING TO WORK"
      return "Great!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end

end
