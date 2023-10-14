# frozen_string_literal: true



# rails runner 'load(File.join(Rails.root, "db", "seeds", "rb", "autos.rb"))'
puts 'Importando 10 autos...'

 
usuarios = User.all

10.times do
  patente = Faker::Vehicle.license_plate
  marca = Faker::Vehicle.make
  modelo = Faker::Vehicle.model
  ano = Faker::Vehicle.year
  user = usuarios.sample # Asigna aleatoriamente un usuario existente al vehículo

  Vehiculo.create!(
    patente: patente,
    marca: marca,
    modelo: modelo,
    ano: ano,
    user_id: user.id
  )
end

puts "Se crearon 10 vehículos con éxito."
