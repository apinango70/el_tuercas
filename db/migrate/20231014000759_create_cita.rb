class CreateCita < ActiveRecord::Migration[7.0]
  def change
    create_table :cita do |t|
      t.date :fecha

      t.timestamps
    end
  end
end
