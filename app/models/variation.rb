class Variation < ApplicationRecord
  belongs_to :material

  validates :color, :size, :unit_of_measurement, :total_qtty, :remaining_qtty, :price, :material_id, presence: true
end
