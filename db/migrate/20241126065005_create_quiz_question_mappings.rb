class CreateQuizQuestionMappings < ActiveRecord::Migration[7.2]
  def change
    create_table :quiz_question_mappings do |t|
      t.references :quiz, null: false, foreign_key: true
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
