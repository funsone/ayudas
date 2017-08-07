class SolicitantesController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_solicitante, only: [:show, :edit, :update, :destroy]

  # GET /solicitantes
  # GET /solicitantes.json
  def index
    if  !params[:search].nil?
    s = params[:search]
      @beneficiarios_b = Beneficiario.search s
      @solicitantes_b = Solicitante.search s
    end
    @solicitantes = Solicitante.all.paginate(:per_page => 10, :page => params[:page]).order('created_at DESC')
    @beneficiarios = Beneficiario.all.paginate(:per_page => 10, :page => params[:page]).order('created_at DESC')
    @solicitantes_index = Solicitante.all.paginate(:per_page => 10, :page => params[:page]).order('created_at DESC')
  end

  # GET /solicitantes/1
  # GET /solicitantes/1.json
  def show
    if  !params[:search].nil?
    s = params[:search]
    @beneficiarios_b = Beneficiario.search s

    end
    @beneficiarios = Beneficiario.all.paginate(:per_page => 10, :page => params[:page]).order('created_at DESC')
  end

  # GET /solicitantes/new
  def new
    authorize! :new, Solicitante
    @solicitante = Solicitante.new

  end

  # GET /solicitantes/1/edit
  def edit
    authorize! :edit, Solicitante
  end

  # POST /solicitantes
  # POST /solicitantes.json
  def create
    authorize! :create, Solicitante
    @solicitante = Solicitante.new(solicitante_params)

    respond_to do |format|
      if @solicitante.save
        format.html { redirect_to @solicitante, notice: 'Solicitante creado exitosamente.' }
        format.json { render :show, status: :created, location: @solicitante }
      else
        format.html { render :new }
        format.json { render json: @solicitante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /solicitantes/1
  # PATCH/PUT /solicitantes/1.json
  def update
    authorize! :update, Solicitante
    respond_to do |format|
      if @solicitante.update(solicitante_params)
        format.html { redirect_to @solicitante, notice: 'Solicitante actualizado exitosamente.' }
        format.json { render :show, status: :ok, location: @solicitante }
      else
        format.html { render :edit }
        format.json { render json: @solicitante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /solicitantes/1
  # DELETE /solicitantes/1.json
  def destroy
    authorize! :destroy, Solicitante
    @solicitante.destroy
    respond_to do |format|
      format.html { redirect_to solicitantes_url, notice: 'Solicitante was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solicitante
      @solicitante = Solicitante.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def solicitante_params
      params.require(:solicitante).permit(:cedula, :tipo_cedula, :nombres, :apellidos, :sexo, :fecha_de_nacimiento, :lugar_de_nacimiento, :direccion, :municipios, :grado_de_instruccion, :obs_instruccion, :oficio, :ingreso_mensual, :obs_ingreso, :empresa, :carga_familiar, :telefono_fijo, :telefono_movil, :estado_civil, :correo)
    end
end
