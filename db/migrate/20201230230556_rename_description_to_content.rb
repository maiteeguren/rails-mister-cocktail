class RenameDescriptionToContent < ActiveRecord::Migration[6.0]
  def change
    rename_column :reviews, :description, :content
  end
end
