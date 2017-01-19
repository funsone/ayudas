class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
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
'Otros' => 10]

]
end
