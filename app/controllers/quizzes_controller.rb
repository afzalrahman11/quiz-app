class QuizzesController < ApplicationController
  def show
    @quiz = Quiz.includes(:questions).find(params[:id])
  end

  def submit
    @quiz = Quiz.find(params[:quiz_id])
    submitted_answers = params[:answers]
    # submitted_answers => {"44"=>"0", "21"=>"0", "45"=>"0", "5"=>"0", "23"=>"0", "26"=>"1", "4"=>"1", "14"=>"1"}

    @score = 0
    correct_answers = CorrectAnswer.where(question_id: submitted_answers.keys)
    # correct_answers.pluck(:question_id, :correct_option) => [[4, 1], [5, 0], [14, 2], [21, 1], [23, 1], [26, 2], [44, 0], [45, 0]]

    correct_answers.each do |correct_answer|
      current_submitted_answer = submitted_answers[correct_answer.question_id.to_s].to_i
      if correct_answer.correct_option == current_submitted_answer
        @score += 1
      end
    end
  end
end
