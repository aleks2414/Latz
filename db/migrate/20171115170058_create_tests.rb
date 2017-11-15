class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.references :quiz, index: true, foreign_key: true
      t.string :name
      t.string :email
      t.string :city
      t.string :zip_code

      t.timestamps null: false
    end
  end
end
