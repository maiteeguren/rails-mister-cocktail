class AddReferenceToReviews < ActiveRecord::Migration[6.0]
  def change
    remove_column :reviews, :user, :string
    add_reference :reviews, :user, null: false, foreign_key: true
  end
end
