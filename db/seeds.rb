# db/seeds.rb
require 'faker'

puts 'Creando usuarios...'
# Crear 10 usuarios como clientes y administrativos
10.times do
  User.create!(
    email: Faker::Internet.email,
    password: 'password123', # Cambia esto a la contraseña que desees
    username: Faker::Internet.unique.user_name,
    role: %w[user administrative].sample,
    telefono: Faker::PhoneNumber.phone_number,
    nombre: Faker::Name.first_name,
    apellido: Faker::Name.last_name,
    direccion: Faker::Address.full_address
  )
end

puts 'Se crearon 10 usuarios con faker...'


puts 'Creando citas...'

# Crear 10 citas
10.times do
  Citum.create!(
    fecha: Faker::Date.forward(days: 30)
  )
end

puts 'Se crearon 10 citas con faker...'



puts 'Creando vehículos...'
# Crear 10 vehículos con citas y servicios asociados
10.times do
  user = User.all.sample
  cita = Citum.all.sample

  vehicle = Vehiculo.create!(
    patente: Faker::Vehicle.license_plate,
    marca: Faker::Vehicle.make,
    modelo: Faker::Vehicle.model,
    ano: Faker::Vehicle.year,
    user: user,
    citum: cita
  )

puts 'Se crearon 10 vehículos con faker...'


puts 'Creando servicios...'
  # Crear servicios
  service = Servicio.create!(
    tipo: Servicio.tipos.keys.sample,
    estado: Servicio.estados.keys.sample,
    piezas: Faker::Lorem.sentence,
    fecha_entrega: Faker::Date.forward(days: 7),
    vehiculo: vehicle
  )
  
  # Asociar el servicio al vehículo
  vehicle.servicios << service
end

puts 'Se crearon 10 servicios con faker...'


puts 'Base de datos poblada con éxito!...'