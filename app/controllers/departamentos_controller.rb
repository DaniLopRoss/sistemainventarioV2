class DepartamentosController < ApplicationController
 
  before_action :authenticate_usuario!
  #load_and_authorize_resource params_method: :departamento_params

  # GET /departamentos or /departamentos.json
  def index
    @departamento = Departamento.all
  end

  # GET /departamentos/1 or /departamentos/1.json
  def show
  end

  # GET /departamentos/new
  def new
    @departamento = Departamento.new
  end

  # GET /departamentos/1/edit
  def edit
  end

  # POST /departamentos or /departamentos.json
  def create
    @departamento = Departamento.new(departamento_params)

    respond_to do |format|
      if @departamento.save
        format.html { redirect_to departamento_url(@departamento), notice: "El departamento se ha creado exitosamente." }
        format.json { render :show, status: :created, location: @departamento }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @departamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /departamentos/1 or /departamentos/1.json
  def update
    authorize! :update, @equipos
    respond_to do |format|
      if @departamento.update(departamento_params)
        format.html { redirect_to departamento_url(@departamento), notice: "El departamento se ha actualizado correctamente." }
        format.json { render :show, status: :ok, location: @departamento }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @departamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /departamentos/1 or /departamentos/1.json
  def destroy
    authorize! :destroy, @equipos
    @departamento.destroy

    respond_to do |format|
      format.html { redirect_to departamentos_url, notice: "El departamento se ha eliminado." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_departamento
      @departamento = Departamento.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def departamento_params
      params.require(:departamento).permit(:nombre, :num_equipo, :id_area)
    end
end
