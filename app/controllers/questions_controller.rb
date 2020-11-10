class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :update, :edit, :destroy]
  
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def edit
  end

  def show
  end

  def create
    @question = Question.create(question_params)
    if @question.save
      redirect_to questions_path
    else
      render :new
    end
  end

  def update
    if @question.update(question_params)
      redirect_to questions_path
    else
      render :edit
    end
  end

  def destroy
  end

  private 

  def question_params
    params.require(:question).permit(:title, :text)
  end

  def set_question
    @question = Question.find(params[:id])
  end
end

