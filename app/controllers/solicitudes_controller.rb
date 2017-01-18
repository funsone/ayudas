class SolicitudesController < ApplicationController
  before_action :set_solicitud, only: [:show, :edit, :update, :destroy]

  # GET /solicitudes
  # GET /solicitudes.json
  def index
    @solicitudes = Solicitud.all
  end

  # GET /solicitudes/1
  # GET /solicitudes/1.json
  def show
  end

  # GET /solicitudes/new
  def new
    @solicitud = Solicitud.new
  end

  # GET /solicitudes/1/edit
  def edit
  end

  # POST /solicitudes
  # POST /solicitudes.json
  def create
    @solicitud = Solicitud.new(solicitud_params)

    respond_to do |format|
      if @solicitud.save
        format.html { redirect_to @solicitud, notice: 'Solicitud was successfully created.' }
        format.json { render :show, status: :created, location: @solicitud }
      else
        format.html { render :new }
        format.json { render json: @solicitud.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /solicitudes/1
  # PATCH/PUT /solicitudes/1.json
  def update
    respond_to do |format|
      if @solicitud.update(solicitud_params)
        format.html { redirect_to @solicitud, notice: 'Solicitud was successfully updated.' }
        format.json { render :show, status: :ok, location: @solicitud }
      else
        format.html { render :edit }
        format.json { render json: @solicitud.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /solicitudes/1
  # DELETE /solicitudes/1.json
  def destroy
    @solicitud.destroy
    respond_to do |format|
      format.html { redirect_to solicitudes_url, notice: 'Solicitud was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solicitud
      @solicitud = Solicitud.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def solicitud_params
      params.require(:solicitud).permit(:status, :descripcion, :ayuda_id, :solicitante_id, :beneficiario_id)
    end
end
