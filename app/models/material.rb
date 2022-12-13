class Material < ApplicationRecord
  belongs_to :category
  has_many :variations
end
