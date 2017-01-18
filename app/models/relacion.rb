class Relacion < ApplicationRecord
  belongs_to :solicitante
  belongs_to :beneficiario
end
