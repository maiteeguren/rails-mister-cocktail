class AddReferenceToReviews < ActiveRecord::Migration[6.0]
  def change
    remove_column :reviews, :user, :string
    add_reference :reviews, :user, foreign_key: true
  end
end
