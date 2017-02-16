class Solicitante < ApplicationRecord
  has_many :historiales
  has_many :beneficiarios, through: :historiales
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :correo, format: { with: VALID_EMAIL_REGEX, message: 'El formato de correo es inválido'}, :allow_blank => true
  validates :telefono_fijo, :telefono_movil, length: { is: 11 }, allow_blank: true, numericality: { only_integer: true }
  validates :carga_familiar, numericality: { only_integer: true }
  validates :ingreso_mensual, numericality: true
  validates :cedula, :nombres, :apellidos, :tipo_cedula, :estado_civil, :grado_de_instruccion, :municipios, :direccion, :oficio, :carga_familiar, :fecha_de_nacimiento, :lugar_de_nacimiento, :sexo, :ingreso_mensual, presence: true, :allow_blank => false
  validates :cedula, uniqueness: { case_sensitive: false, message: 'Ya se encuentra registrada' }, numericality: { only_integer: true }

end
