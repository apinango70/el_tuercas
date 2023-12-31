class VehiculosController < ApplicationController
  before_action :set_vehiculo, only: %i[ show edit update destroy ]
  before_action :authenticate_user! # Autenticación de usuarios
  
  # GET /vehiculos or /vehiculos.json
  def index
    @pagy, @vehiculos = pagy(Vehiculo.order(created_at: :desc), items: 5) # Paginación
  end

  # GET /vehiculos/1 or /vehiculos/1.json
  def show
  end

  # GET /vehiculos/new
  def new
    @vehiculo = Vehiculo.new
    #Muestra los usuarios en el select
    @usuarios = User.all
    @vehiculo.build_citum
    #Muestra los servicios en el select
    @vehiculo.servicios.build 
  end

  # GET /vehiculos/1/edit
  def edit
    @usuarios = User.all
    @vehiculo = Vehiculo.includes(:citum).find(params[:id])
    @vehiculo.servicios.build if @vehiculo.servicios.empty?
  end

  # POST /vehiculos or /vehiculos.json
  def create
    @vehiculo = Vehiculo.new(vehiculo_params)

    respond_to do |format|
      if @vehiculo.save
        format.html { redirect_to vehiculo_url(@vehiculo), notice: "Vehiculo was successfully created." }
        format.json { render :show, status: :created, location: @vehiculo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @vehiculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vehiculos/1 or /vehiculos/1.json
  def update
    puts "Params: #{params.inspect}"
  @vehiculo = Vehiculo.find(params[:id])
      # Puts para imprimir los parámetros
       
      puts "Servicios: #{params[:vehiculo][:servicios_attributes].inspect}"
    respond_to do |format|
      if @vehiculo.update(vehiculo_params)
        format.html { redirect_to vehiculo_url(@vehiculo), notice: "Vehiculo was successfully updated." }
        format.json { render :show, status: :ok, location: @vehiculo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @vehiculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehiculos/1 or /vehiculos/1.json
  def destroy
    @vehiculo.destroy

    respond_to do |format|
      format.html { redirect_to vehiculos_url, notice: "Vehiculo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehiculo
      @vehiculo = Vehiculo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vehiculo_params
      params.require(:vehiculo).permit(
        :patente, :marca, :modelo, :ano, :user_id,
        citum_attributes: [:fecha],
        servicios_attributes: [:id, :tipo, :estado, :piezas, :fecha_entrega, :_destroy]
      )
    end
    
 
    
    
end
