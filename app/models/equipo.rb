class Equipo < ApplicationRecord
        

         
         validates :serie, :modelo, :serial , :id_tipos, :id_marca, :id_departamento, :id_area, :estatus, :presence => true
         validates :serie, :uniqueness => true         
end
