class RenameDescriptionToAmount < ActiveRecord::Migration[6.0]
  def change
    rename_column :doses, :description, :amount
  end
end
