class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.references :user, index: true, foreign_key: true
      t.references :quiz, index: true, foreign_key: true
      t.string :title
      t.text :explanation
      t.string :reading
      t.string :link
      t.integer :correct_option

      t.timestamps null: false
    end
  end
end
