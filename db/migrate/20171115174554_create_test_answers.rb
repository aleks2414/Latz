class CreateTestAnswers < ActiveRecord::Migration
  def change
    create_table :test_answers do |t|
      t.references :test, index: true, foreign_key: true
      t.integer :option

      t.timestamps null: false
    end
  end
end
