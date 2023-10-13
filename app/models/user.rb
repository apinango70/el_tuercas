class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Enum de roles
  enum role: {  user: 'client',
                admin: 'admin',
                administrative: 'administrative',
  }, _default: 'client'
  
  # Validaciones de campos
  validates :username, presence: { message: "Username field cannot be blank" }, uniqueness: { message: "Username is already in use" }
  validates :role, presence: { message: "Role field cannot be blank" }
  validates :nombre, presence: { message: "Nombre field cannot be blank" }
  validates :apellido, presence: { message: "Apellido field cannot be blank" }
  validates :telefono, presence: { message: "Telefono field cannot be blank" }
  validates :direccion, presence: { message: "Direccion field cannot be blank" }
  

end