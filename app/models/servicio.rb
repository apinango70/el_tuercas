class Servicio < ApplicationRecord
  # == Schema Information
#
# Table name: servicios
#
#  id            :bigint           not null, primary key
#  tipo          :string
#  estado        :string
#  piezas        :string
#  fecha_entrega :date
#  vehiculo_id   :bigint           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

  #relaciones
  belongs_to :vehiculo
  has_many :vehiculo_servicios, dependent: :destroy
  has_many :vehiculos, through: :vehiculo_servicios

  #validaciones
  validates :tipo, presence: { message: "Tipo field cannot be blank" }
  validates :estado, presence: { message: "Estado field cannot be blank" }
  validates :piezas, presence: { message: "Piezas field cannot be blank" }
   validates :fecha_entrega, presence: true, allow_blank: false

  enum tipo: {
    mantenimiento: 'Mantenimiento',
    afinacion: 'Afinación',
    cambio_neumaticos: 'Cambio de neumáticos',
    alineado_balance: 'Alineado y balance',
    cambio_aceite_filtro: 'Cambio de aceite y filtro',
    reparacion_frenos: 'Reparación de frenos',
    latoneria_pintura: 'Latonería y pintura',
    revision_climatizador: 'Revisión climatizador',
    lavado_vehiculo: 'Lavado de vehículo'
  }

  enum estado: {
    en_progreso: 'en progreso',
    completada: 'completada'
  }
end
