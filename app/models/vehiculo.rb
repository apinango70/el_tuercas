# == Schema Information
#
# Table name: vehiculos
#
#  id         :bigint           not null, primary key
#  patente    :string
#  marca      :string
#  modelo     :string
#  ano        :string
#  user_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  citum_id   :bigint
#
class Vehiculo < ApplicationRecord

  #relaciones
  belongs_to :user
  belongs_to :citum 
  has_many :servicios, dependent: :destroy
  has_many :vehiculo_servicios, dependent: :destroy
  has_many :servicios, through: :vehiculo_servicios
  accepts_nested_attributes_for :citum
  accepts_nested_attributes_for :servicios
  # Validaciones de campos
  validates :patente, presence: { message: "Patente field cannot be blank" }, uniqueness: { message: "Patente is already in use" }
  validates :marca, presence: { message: "Marca field cannot be blank" }
  validates :modelo, presence: { message: "Modelo field cannot be blank" }
  validates :ano, presence: { message: "Año field cannot be blank" }
 


end
