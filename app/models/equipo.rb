class Equipo < ApplicationRecord
         belongs_to :tipos
         belongs_to  :licencia
         belongs_to  :departamento
         belongs_to  :areas
         belongs_to  :marca 
end
