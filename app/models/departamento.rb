class Departamento < ApplicationRecord
         has_many :areas
         has_many :equipos
end
