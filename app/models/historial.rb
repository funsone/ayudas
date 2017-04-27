class Historial < ApplicationRecord
  belongs_to :solicitante
  belongs_to :beneficiario 
end
