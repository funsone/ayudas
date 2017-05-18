class Solicitud < ApplicationRecord
  belongs_to :ayuda
  belongs_to :beneficiario
  belongs_to :solicitante
  validates :status, :ayuda, presence: true
  self.per_page = 10

end
