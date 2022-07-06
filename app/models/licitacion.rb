class Licitacion < ApplicationRecord
  belongs_to :categoria
  belongs_to :licitante
  belongs_to :region
end
