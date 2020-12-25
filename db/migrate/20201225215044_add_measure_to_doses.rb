class AddMeasureToDoses < ActiveRecord::Migration[6.0]
  def change
    add_reference :doses, :measure, null: false, foreign_key: true
  end
end
