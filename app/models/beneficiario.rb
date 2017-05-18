class Beneficiario < ApplicationRecord
  has_many :historiales
  has_many :solicitantes, through: :historiales
  has_many :solicitudes, dependent: :destroy

  accepts_nested_attributes_for :historiales

  validates :cedula, :nombres, :apellidos, :tipo_cedula, :sexo, :fecha_de_nacimiento, :oficio, :estado_civil, :tipo_de_casa, :num_habitaciones, :num_banos, :enseres, :discapacidad, presence: true, :allow_blank => false
  validates :cedula, uniqueness: { case_sensitive: false, message: 'Ya se encuentra registrada' }, numericality: { only_integer: true }

  def self.search(search)
     search = search.downcase

      where('cedula = ?', "#{search}").order(:id)

  end
end
