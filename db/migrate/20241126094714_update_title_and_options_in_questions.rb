class UpdateTitleAndOptionsInQuestions < ActiveRecord::Migration[7.2]
  def change
    change_column_null :questions, :title, false
    change_column_null :questions, :optionA, false
    change_column_null :questions, :optionB, false
  end
end
