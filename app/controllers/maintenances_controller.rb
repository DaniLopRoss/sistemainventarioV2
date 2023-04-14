class MaintenancesController < ApplicationController
  before_action :set_maintenance, only: %i[ show edit update destroy ]

  # GET /maintenances or /maintenances.json
  def index
    @maintenances = Maintenance.all
    if params[:start_date].present? && params[:end_date].present?
      start_date = Date.parse(params[:start_date])
      end_date = Date.parse(params[:end_date])
      @maintenances = @maintenances.where(fecha_inicio: start_date..end_date)
    end
  
    respond_to do |format|
      format.html
      
      format.pdf
    end
    
  end

  # GET /maintenances/1 or /maintenances/1.json
  def show
   # @maintenance = Maintenance.get_mantenimientos
   @usuario_logiado= current_usuario.nombre
  end

  # GET /maintenances/new
  def new
    @maintenance = Maintenance.new
    @equipment = Equipment.find(params[:equipment_id])
    @time_now = Time.new.strftime("%Y-%m-%dT%T")
    

    @usuario_logiado= current_usuario.id
  end

  # GET /maintenances/1/edit
  def edit
    @usuario_logiado= current_usuario.id
  end

  # POST /maintenances or /maintenances.json
  def create
    @maintenance = Maintenance.new(maintenance_params)
    @maintenance.equipment_id = params[:maintenance][:equipment_id] # Aquí se el equipment_id al mantenimiento
  
    respond_to do |format|
      if @maintenance.save
        format.html { redirect_to maintenance_url(@maintenance), notice: "El mantenimiento se ha creado correctamente." }
        format.json { render :show, status: :created, location: @maintenance }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @maintenance.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # PATCH/PUT /maintenances/1 or /maintenances/1.json
  def update
    respond_to do |format|
      if @maintenance.update(maintenance_params)
        format.html { redirect_to maintenance_url(@maintenance), notice: "El mantenimiento se ha actualizado correctamente." }
        format.json { render :show, status: :ok, location: @maintenance }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @maintenance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maintenances/1 or /maintenances/1.json
  def destroy
    @maintenance.destroy

    respond_to do |format|
      format.html { redirect_to maintenances_url, notice: "El mantenimiento se ha eliminado correctamente." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maintenance
      @maintenance = Maintenance.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def maintenance_params
      params.require(:maintenance).permit(:fecha_inicio, :fecha_fin, :observaciones, :tipo_mantenimiento, :equipment_id, :zone_id, :physical_id, :tool_id, :resource_id, :usuario_id,:nombre)

    end
end
