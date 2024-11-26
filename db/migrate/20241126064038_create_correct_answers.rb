class CreateCorrectAnswers < ActiveRecord::Migration[7.2]
  def change
    create_table :correct_answers do |t|
      t.references :question, null: false, foreign_key: true
      t.integer :correct_option, null: false

      t.timestamps
    end
  end
end