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
require "test_helper"

class VehiculoServicioTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
