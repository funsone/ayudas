class Solicitud < ApplicationRecord
  belongs_to :ayuda
  belongs_to :beneficiario
  belongs_to :solicitante

end
