class CreateMeasures < ActiveRecord::Migration[6.0]
  def change
    create_table :measures do |t|
      t.string :unit

      t.timestamps
    end
  end
end
