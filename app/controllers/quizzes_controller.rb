class QuizzesController < ApplicationController
  def show
    @quiz = Quiz.includes(:questions).find(params[:id])
  end
end
