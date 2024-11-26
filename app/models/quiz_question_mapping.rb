class QuizQuestionMapping < ApplicationRecord
  belongs_to :quiz
  belongs_to :question

  validates :question_id, :quiz_id, presence: true
end
