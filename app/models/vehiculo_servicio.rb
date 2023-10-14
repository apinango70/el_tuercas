# == Schema Information
#
# Table name: vehiculo_servicios
#
#  id          :bigint           not null, primary key
#  vehiculo_id :bigint           not null
#  servicio_id :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class VehiculoServicio < ApplicationRecord
  #relaciones
  belongs_to :vehiculo
  belongs_to :servicio
end
