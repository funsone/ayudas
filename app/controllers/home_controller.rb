class HomeController < ApplicationController
  def index
    if  !params[:search].nil?
    s = params[:search]



    @solicitantes = Solicitante.search s
    end
  end
end
