class Ayuda < ApplicationRecord
  belongs_to :departamento
  has_many :solicitudes, dependent: :destroy
  validates :nombre, uniqueness: { case_sensitive: false }, presence: true
end
