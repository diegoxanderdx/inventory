class CreateVariations < ActiveRecord::Migration[7.0]
  def change
    create_table :variations do |t|
      t.string :color, null: false
      t.string :size, null: false
      t.string :unit_of_measurement
      t.integer :total_qtty, null: false
      t.integer :remaining_qtty
      t.integer :price
      t.references :material, null: false, foreign_key: true

      t.timestamps
    end
  end
end
