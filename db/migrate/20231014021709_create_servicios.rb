class CreateServicios < ActiveRecord::Migration[7.0]
  def change
    create_table :servicios do |t|
      t.string :tipo
      t.string :estado
      t.string :piezas
      t.date :fecha_entrega
      t.references :vehiculo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
