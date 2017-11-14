class CreateAnwsers < ActiveRecord::Migration
  def change
    create_table :anwsers do |t|
      t.references :user, index: true, foreign_key: true
      t.references :question, index: true, foreign_key: true
      t.string :content

      t.timestamps null: false
    end
  end
end