class ChangeColorAndUnitofmeasurementToInteger < ActiveRecord::Migration[7.0]
  def change
    change_column :variations, :color, 'integer USING CAST(color AS integer)'
    change_column :variations, :unit_of_measurement, 'integer USING CAST(unit_of_measurement AS integer)'
  end
end
