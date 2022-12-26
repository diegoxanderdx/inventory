class PersonalDetail < ApplicationRecord
  belongs_to :user

  validates :first_name, :last_name, :id_type, presence: true
  validates :username, :id_number, :phone_number, :user_id, presence: true, uniqueness: true
end
