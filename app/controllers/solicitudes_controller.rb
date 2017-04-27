class SolicitudesController < ApplicationController
  before_action :set_solicitud, only: [:show, :edit, :update, :destroy]

  # GET /solicitudes
  # GET /solicitudes.json
  def index
    if  !params[:search].nil?
      s = params[:search]
      @beneficiarios = Beneficiario.search s
    end
    @solicitudes=Solicitud.all
  end

  # GET /solicitudes/1
  # GET /solicitudes/1.json
  def show
    @solicitante=Solicitante.find(params[:solicitante_id])
    @beneficiario=Beneficiario.find(params[:beneficiario_id])
  end

  # GET /solicitudes/new
  def new
    @solicitante=Solicitante.find(params[:solicitante_id])
    @beneficiario=Beneficiario.find(params[:beneficiario_id])
    @solicitud = Solicitud.new
  end

  # GET /solicitudes/1/edit
  def edit
  end

  # POST /solicitudes
  # POST /solicitudes.json
  def create
    @solicitante=Solicitante.find(params[:solicitante_id])
    @beneficiario=Beneficiario.find(params[:beneficiario_id])
    @solicitud = Solicitud.create(solicitud_params)
    @solicitud.solicitante_id=@solicitante.id
    @solicitud.beneficiario_id=@beneficiario.id

    respond_to do |format|
      if @solicitud.save
        format.html { redirect_to solicitante_beneficiario_path(@solicitante, @beneficiario), notice: 'Solicitud creada exitosamente.' }
        format.json { render :show, status: :created, location: solicitante_beneficiario_path(@solicitante, @beneficiario) }
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
        format.html { redirect_to solicitudes_path, notice: 'Solicitud was successfully updated.' }
        format.json { render :show, status: :ok, location: solicitudes_path }
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
      params.require(:solicitud).permit(:status, :descripcion, :ayuda_id, :beneficiario_id, :solicitante_id)
    end

    def distance_of_time_in_days(from_time, to_time = 0, include_seconds = false)
        from_time = from_time.to_time if from_time.respond_to?(:to_time)
        to_time = to_time.to_time if to_time.respond_to?(:to_time)
        distance_in_days = (((to_time - from_time).abs)/86400).round
        return distance_in_days
    end

end
