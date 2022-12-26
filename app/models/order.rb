class Order < ApplicationRecord
  belongs_to :user

  validates :first_name, :last_name, :id_type, :id_number, :product_name, :quantity, :group_id, :material, :user_id, presence: true
end
