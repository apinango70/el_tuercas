class AddCitumIdToVehiculos < ActiveRecord::Migration[7.0]
  def change
    add_reference :vehiculos, :citum, null: true, foreign_key: true
  end
end
