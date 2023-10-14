# frozen_string_literal: true

# rails runner 'load(File.join(Rails.root, "db", "seeds", "rb", "clientes.rb"))'
puts 'Creando 10 usuarios...'

 
 

# Crea 10 clientes con datos ficticios
10.times do
    email = Faker::Internet.unique.email
    password = 123456
    username = Faker::Internet.unique.user_name
    telefono = Faker::PhoneNumber.phone_number
    nombre = Faker::Name.first_name
    apellido = Faker::Name.last_name
    direccion = Faker::Address.street_address
    role = ['user', 'administrative'].sample # Asigna aleatoriamente 'user' o 'administrative' como el rol del cliente
  
    User.create!(
      email: email,
      password: password,
      password_confirmation: password,  
      username: username,
      telefono: telefono,
      nombre: nombre,
      apellido: apellido,
      direccion: direccion,
      role: role
    )
  end
  
  puts "Se crearon 10 clientes con éxito."
  
