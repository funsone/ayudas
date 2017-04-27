class Beneficiario < ApplicationRecord
  has_many :historiales
  has_many :solicitantes, through: :historiales
  has_many :solicitudes, dependent: :destroy
  
  accepts_nested_attributes_for :historiales

  def self.search(search)
     search = search.downcase

      where('cedula = ?', "#{search}").order(:id)

  end
end
