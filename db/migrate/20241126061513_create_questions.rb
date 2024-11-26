class CreateQuestions < ActiveRecord::Migration[7.2]
  def change
    create_table :questions do |t|
      t.text :title
      t.text :optionA
      t.text :optionB
      t.text :optionC
      t.text :optionD

      t.timestamps
    end
  end
end