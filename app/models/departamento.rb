class Departamento < ApplicationRecord
  resourcify
  validates :nombre, presence: true, uniqueness: { case_sensitive: false }
  has_many :ayudas ,  dependent: :destroy
end
