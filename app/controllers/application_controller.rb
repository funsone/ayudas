class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
        format.html { redirect_to :back, notice: 'Usted no tiene permiso para realizar esta acción.' }
    end
  end

  $dic = Hash['municipios' => Hash[
  'Antolín del Campo' => 0,
'Arismendi' => 1,
'Díaz' => 2,
'García' => 3,
'Gómez' => 4,
'Maneiro' => 5,
'Marcano' => 6,
'Mariño' => 7,
'Península de Macanao' => 8,
'Tubores' => 9,
'Villalba' => 10],

'tipo_de_cedula' => Hash[
'V' => 0,
'E' => 1],

'status' => Hash[
'En proceso' => 0,
'Aprobado' => 1,
'Rechazado' => 2,
'En espera' => 3],

'sexo' => Hash[
'Masculino' => 0,
'Femenino' => 1],

'grado' => Hash[
'Inicial' => 0,
'Primaria' => 1,
'Primaria Incompleta' => 2,
'Secundaria' => 3,
'Secundaria Incompleta' => 4,
'Universitario' => 5,
'Universitario Incompleto' => 6,
'Especialización' => 7,
'Maestría' => 8,
'Doctorado' => 9],

'estado' => Hash[
'Soltero(a)' => 0,
'Casado(a)' => 1,
'Viudo(a)' => 2,
'Divorciado(a)' => 3],

'parentesco' => Hash[
'Padre' => 0,
'Madre' => 1,
'Esposo(a)' => 2,
'Concubino(a)' => 3,
'Hijo(a)' => 4,
'Sobrino(a)' => 5,
'Tio(a)' => 6,
'Vecino(a)' => 7,
'Hermano(a)' => 8,
'Abuelo(a)' => 9,
'Otros' => 10],

'tipo_de_casa' => Hash[
'Vivienda Completa' => 0,
'Vivienda Incompleta' => 1,
'Vivienda Rústica' => 2],

'oficio' => Hash[
  'Constructor' => 0,
  'Chofer' => 1,
  'Ama de casa' => 2,
  'Estudiante' => 3,
  'Abogado' => 4,
  'Arquitecto' => 5,
  'Comerciante' => 6,
  'Policia' => 7],


  'condicion' => Hash[
    'SI' => true,
    'NO' => false],

    'table_color' => Hash[
    'info' => 0,
    'success' => 1,
    'danger' => 2,
    'warning' => 3],

]

end
