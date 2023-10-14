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
require "test_helper"

class VehiculoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
