class Licencia < ApplicationRecord
    has_one :equipos
         
         validates :nombre, :anio, :num_licencia, :presence => true
         validates :nombre, :uniqueness => true 


end
