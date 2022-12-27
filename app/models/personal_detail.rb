class PersonalDetail < ApplicationRecord
  belongs_to :user

  validates :first_name, :last_name, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "Solo se aceptan letras" }
  validates :id_type, presence: true
  validates :username, :user_id, presence: true, uniqueness: true
  validates :id_number, :phone_number, presence: true, uniqueness: true, numericality: { only_integer: true }

  enum id_type: { Cedula_de_Ciudadania: 0, Tarjeta_de_Identidad: 1, Cedula_de_Extranjeria: 2 }

end
