# == Schema Information
#
# Table name: cita
#
#  id         :bigint           not null, primary key
#  fecha      :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Citum < ApplicationRecord
    #relaciones
    has_many :vehiculos, dependent: :destroy

    #validaciones
    validates :fecha, presence: { message: "Fecha field cannot be blank" }
    
  end
 
