class AddDetailsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :username, :string
    add_column :users, :role, :string
    add_column :users, :telefono, :string
    add_column :users, :nombre, :string
    add_column :users, :apellido, :string
    add_column :users, :direccion, :string
  end
end
