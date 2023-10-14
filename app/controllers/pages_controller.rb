class PagesController < ApplicationController
  def index
    @vehiculos = Vehiculo.includes(:user, :citum, :servicio).all
  end
end
