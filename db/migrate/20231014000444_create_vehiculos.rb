class CreateVehiculos < ActiveRecord::Migration[7.0]
  def change
    create_table :vehiculos do |t|
      t.string :patente
      t.string :marca
      t.string :modelo
      t.string :ano
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
