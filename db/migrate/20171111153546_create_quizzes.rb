class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.string :name
      t.integer :number_of_questions
      t.boolean :is_zip
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
