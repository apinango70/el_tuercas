class CreateVehiculoServicios < ActiveRecord::Migration[7.0]
  def change
    create_table :vehiculo_servicios do |t|
      t.references :vehiculo, null: false, foreign_key: true
      t.references :servicio, null: false, foreign_key: true

      t.timestamps
    end
  end
end
