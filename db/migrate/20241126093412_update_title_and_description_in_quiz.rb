class UpdateTitleAndDescriptionInQuiz < ActiveRecord::Migration[7.2]
  def change
    change_column_null :quizzes, :title, false
    change_column_null :quizzes, :description, false
  end
end
