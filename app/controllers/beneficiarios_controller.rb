class BeneficiariosController < ApplicationController
  before_action :set_beneficiario, only: [:show, :edit, :update, :destroy]

  # GET /beneficiarios
  # GET /beneficiarios.json
  def index

  end

  # GET /beneficiarios/1
  # GET /beneficiarios/1.json
  def show
    @solicitante= Solicitante.find(params[:solicitante_id])
    @beneficiario= Beneficiario.find(params[:id])
    @solicitudes = Solicitud.where(solicitante_id: @solicitante.id, beneficiario_id: @beneficiario.id).all
  end

  # GET /beneficiarios/new
  def new
    @solicitante= Solicitante.find(params[:solicitante_id])
    @beneficiario = @solicitante.beneficiarios.new
    respond_to do |format|
      format.html
      format.xml  { render :xml => @beneficiario }
    end
  end

  # GET /beneficiarios/1/edit
  def edit
    @solicitante= Solicitante.find(params[:solicitante_id])
  end

  # POST /beneficiarios
  # POST /beneficiarios.json
  def create
    solicitante=Solicitante.find(params[:solicitante_id])
    @beneficiario = Beneficiario.create(beneficiario_params)
    @beneficiario.historiales.build(parentesco: 2, solicitante_id: solicitante.id)

    respond_to do |format|
      if @beneficiario.save
        format.html { redirect_to solicitante_path(solicitante), notice: 'Beneficiario creado exitosamente.' }
        format.json { render :show, status: :created, location: solicitante_path(solicitante) }
      else
        format.html { render :new }
        format.json { render json: @beneficiario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beneficiarios/1
  # PATCH/PUT /beneficiarios/1.json
  def update
    @solicitante= Solicitante.find(params[:solicitante_id])

    respond_to do |format|
      if @beneficiario.update(beneficiario_params)
        format.html { redirect_to solicitante_beneficiario_path(@solicitante, @beneficiario), notice: 'Beneficiario actualizado exitosamente.' }
        format.json { render :show, status: :ok, location: solicitante_beneficiario_path(@solicitante, @beneficiario) }
      else
        format.html { render :edit }
        format.json { render json: @beneficiario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beneficiarios/1
  # DELETE /beneficiarios/1.json
  def destroy
    @beneficiario.destroy
    respond_to do |format|
      format.html { redirect_to beneficiarios_url, notice: 'Beneficiario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beneficiario
      @beneficiario = Beneficiario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def beneficiario_params
      params.require(:beneficiario).permit(:tipo_cedula, :cedula, :nombres, :apellidos, :sexo, :fecha_de_nacimiento, :oficio, :estado_civil, :tipo_de_casa, :num_habitaciones, :num_banos, :enseres, :obs_enseres, :discapacidad, :obs_discapacidad,:historial_attributes => [:parentesco])
    end
end
