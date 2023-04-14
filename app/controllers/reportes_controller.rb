class ReportesController < ApplicationController
  load_and_authorize_resource
  before_action :set_reporte, only: %i[ show edit update destroy ]

  # GET /reportes or /reportes.json
  def index
   @reportes = Reporte.all
   if params[:start_date].present? && params[:end_date].present?
    start_date = Date.parse(params[:start_date])
    end_date = Date.parse(params[:end_date])
    @reportes = @reportes.where(fecha: start_date..end_date)
  end
   
end 


  # GET /reportes/1 or /reportes/1.json
  def show
  end

  # GET /reportes/new
  def new
    @reporte = Reporte.new
    @maintenance = Maintenance.find(params[:maintenance_id])
  end

  # GET /reportes/1/edit
  def edit
  end

  # POST /reportes or /reportes.json
  def create
    @reporte = Reporte.new(reporte_params)
    @reporte.maintenance_id = params[:reporte][:maintenance_id] # Aquí se el maintenance_id al mantenimiento
    if reporte_params[:tipo_problema] == "Otro"
      reporte_params[:tipo_problema] = reporte_params[:otro_tipo_problema]
    end
    
    @reporte.update(reporte_params)


    #@maintenance.equipment_id = params[:maintenance][:equipment_id] # Aquí se el equipment_id al mantenimiento
    respond_to do |format|
      if @reporte.save
        format.html { redirect_to reporte_url(@reporte), notice: "Reporte se ha registrado correctamente." }
        format.json { render :show, status: :created, location: @reporte }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reporte.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reportes/1 or /reportes/1.json
  def update
    respond_to do |format|
      if @reporte.update(reporte_params)
        format.html { redirect_to reporte_url(@reporte), notice: "Reporte se ha actualizado correctamente." }
        format.json { render :show, status: :ok, location: @reporte }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @reporte.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reportes/1 or /reportes/1.json
  def destroy
    @reporte.destroy

    respond_to do |format|
      format.html { redirect_to reportes_url, notice: "Reporte se ha eliminado." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reporte
      @reporte = Reporte.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reporte_params
      params.require(:reporte).permit(:fecha, :observaciones, :tipo_problema, :otro_tipo_problema, :maintenance_id)
    end
end
