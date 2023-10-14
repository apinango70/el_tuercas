# == Schema Information
#
# Table name: servicios
#
#  id            :bigint           not null, primary key
#  tipo          :string
#  estado        :string
#  piezas        :string
#  fecha_entrega :date
#  vehiculo_id   :bigint           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
require "test_helper"

class ServicioTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
