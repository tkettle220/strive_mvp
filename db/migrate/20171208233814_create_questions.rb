class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.text :question_text, null: false
      t.integer :time_limit, null: false
      t.timestamps
    end
  end
end
