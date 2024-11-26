class CorrectAnswer < ApplicationRecord
  belongs_to :question

  validates :question_id, presence: true
  validates :correct_option, presence: true, inclusion: { in: [ 0, 1, 2, 3 ] }
  # inclusion is to allow values from a particular array
end
