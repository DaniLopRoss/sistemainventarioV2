class ReportesistemasController < ApplicationController
  before_action :set_reportesistema, only: %i[ show edit update destroy ]

  # GET /reportesistemas or /reportesistemas.json
  def index
        @departamentos = Departament.order(num_equipos: :desc)
  end



  # GET /reportesistemas/1 or /reportesistemas/1.json
  def show
  end

  # GET /reportesistemas/new
  def new
    @reportesistema = Reportesistema.new
  end

  # GET /reportesistemas/1/edit
  def edit
  end

  # POST /reportesistemas or /reportesistemas.json
  def create
    @reportesistema = Reportesistema.new(reportesistema_params)

    respond_to do |format|
      if @reportesistema.save
        format.html { redirect_to reportesistema_url(@reportesistema), notice: "Reportesistema was successfully created." }
        format.json { render :show, status: :created, location: @reportesistema }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reportesistema.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reportesistemas/1 or /reportesistemas/1.json
  def update
    respond_to do |format|
      if @reportesistema.update(reportesistema_params)
        format.html { redirect_to reportesistema_url(@reportesistema), notice: "Reportesistema was successfully updated." }
        format.json { render :show, status: :ok, location: @reportesistema }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @reportesistema.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reportesistemas/1 or /reportesistemas/1.json
  def destroy
    @reportesistema.destroy

    respond_to do |format|
      format.html { redirect_to reportesistemas_url, notice: "Reportesistema was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reportesistema
      @reportesistema = Reportesistema.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reportesistema_params
      params.fetch(:reportesistema, {})
    end
end
