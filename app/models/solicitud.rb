class Solicitud < ApplicationRecord
  belongs_to :ayuda
  belongs_to :solicitante
  belongs_to :beneficiario
end
