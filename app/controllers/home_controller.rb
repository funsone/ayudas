class HomeController < ApplicationController
  def index
  ##Buscador de solicitantes --Begin
    if  !params[:search].nil?
    s = params[:search]
      @solicitantes_b = Solicitante.search s
    end
    @solicitantes = Solicitante.all.paginate(:per_page => 10, :page => params[:page]).order('created_at DESC')
  end
  ## --end
end
