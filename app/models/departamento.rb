class Departamento < ApplicationRecord
  validates :nombre, presence: true
end
