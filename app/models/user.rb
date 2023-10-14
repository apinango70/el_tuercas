# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  username               :string
#  role                   :string
#  telefono               :string
#  nombre                 :string
#  apellido               :string
#  direccion              :string
#
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Enum de roles
  enum role: {  user: 'user',
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
