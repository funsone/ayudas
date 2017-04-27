class Solicitud < ApplicationRecord
  belongs_to :ayuda
  belongs_to :beneficiario
  belongs_to :solicitante
  self.per_page = 10

end
