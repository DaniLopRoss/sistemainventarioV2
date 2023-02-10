class Equipo12 < ApplicationRecord
    belongs_to :licencia
    belongs_to :marca
    belongs_to :departamento
    belongs_to :licencia
    belongs_to :tipo
end
