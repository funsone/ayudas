class Beneficiario < ApplicationRecord
  has_many :historiales
  has_many :solicitantes, through: :historiales
  accepts_nested_attributes_for :historiales
end
