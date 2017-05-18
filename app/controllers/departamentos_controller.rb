class DepartamentosController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_departamento, only: [:show, :edit, :update, :destroy]

  # GET /departamentos
  # GET /departamentos.json
  def index
    @departamentos = Departamento.all
  end

  # GET /departamentos/1
  # GET /departamentos/1.json
  def show
  end

  # GET /departamentos/new
  def new
    authorize! :new, Departamento
    @departamento = Departamento.new
  end

  # GET /departamentos/1/edits
  def edit
    authorize! :edit, Departamento
  end

  # POST /departamentos
  # POST /departamentos.json
  def create
    authorize! :create, Departamento
    @departamento = Departamento.new(departamento_params)

    respond_to do |format|
      if @departamento.save
        format.html { redirect_to departamentos_path, notice: 'Departamento creado exitosamente.' }
        format.json { render :show, status: :created, location: @departamento }
      else
        format.html { render :new }
        format.json { render json: @departamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /departamentos/1
  # PATCH/PUT /departamentos/1.json
  def update
    authorize! :update, Departamento
    respond_to do |format|
      if @departamento.update(departamento_params)
        format.html { redirect_to departamentos_path, notice: 'Departamento actualizado exitosamente.' }
        format.json { render :show, status: :ok, location: @departamento }
      else
        format.html { render :edit }
        format.json { render json: @departamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /departamentos/1
  # DELETE /departamentos/1.json
  def destroy
    authorize! :destroy, Departamento
    @departamento.destroy
    respond_to do |format|
      format.html { redirect_to departamentos_url, notice: 'Departamento eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_departamento
      @departamento = Departamento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def departamento_params
      params.require(:departamento).permit(:nombre)
    end
end
