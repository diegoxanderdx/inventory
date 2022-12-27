class Category < ApplicationRecord
  has_many :materials, dependent: :destroy

  validates :name, presence: true, uniqueness: true
end
