class Question < ApplicationRecord
  has_one :correct_answer, dependent: :destroy

  validates :title, :optionA, :optionB, presence: true
end
