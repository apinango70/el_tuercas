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
    belongs_to :cliente
    belongs_to :vehiculo
  end
 
