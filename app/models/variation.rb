class Variation < ApplicationRecord
  belongs_to :material

  validates :color, :size, :unit_of_measurement, :total_qtty, :remaining_qtty, :price, :material_id, presence: true

  enum color: { Negro: 0, Blanco: 1, Amarillo: 2, Azul: 3, Rojo: 4, Verde: 5, Lila: 6, Naranja: 7, Gris: 8, Cafe: 9, Beige: 10, Cian: 11, Verde_azul: 12, Azul_claro: 13, Turquesa: 14, Magenta: 15, Rosa: 15, Fucsia: 16, Purpura: 17, Purpura_oscuro: 18, Borgona: 19, Violeta: 20, Verde_oscuro: 21, Verde_oliva: 22, Verde_menta: 23, Verde_limon: 24, Verde_claro: 25, Amarillo_claro: 26, Mostaza: 27, Lavanda: 28, Salmon: 29, Ocre: 30, Ciruela: 31, Melocoton: 32, Tan:33, Granate: 34, Malva: 35 }

  enum unit_of_measurement: { Decimetros_cuadrados: 0, Metros: 1, Centimetros: 2, Unidades: 3, Pliegos: 4, Laminas: 5, Conos: 6, Galones: 7, Litros: 8, Botellas: 9 }

end
