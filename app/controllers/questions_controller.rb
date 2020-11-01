class QuestionsController < ApplicationController
  
  def index
    @questions = Quation.all
  end

  def new
    @question = Question.new
  end

  def edit
  end

  def show
  end

end
