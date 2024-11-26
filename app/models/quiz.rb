class Quiz < ApplicationRecord
  has_many :quiz_question_mappings, dependent: :destroy
  # quiz_question_mappings has many questions, so we can associate quiz to questions via quiz_question_mappings
  # we can call quiz.questions through the quiz_question_mappings association.
  has_many :questions, through: :quiz_question_mappings, dependent: :destroy

  validates :title, :description, presence: true
end
