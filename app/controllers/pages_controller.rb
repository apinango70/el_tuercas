class PagesController < ApplicationController
  def index
    @vehiculos = Vehiculo.includes(:user, :citas, :servicios).all
  end
end
