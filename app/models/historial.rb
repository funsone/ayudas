class Historial < ApplicationRecord
  belongs_to :solicitud
  belongs_to :beneficiario
  belongs_to :solicitante
end
