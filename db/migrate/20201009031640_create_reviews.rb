class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.references :cocktail, null: false, foreign_key: true
      t.string :description
      t.integer :rating
      t.string :user

      t.timestamps
    end
  end
end
