class Tipo < ApplicationRecord
         has_one :equipo

         validates :nombre , :presence => true 
         validates :nombre, :uniqueness => true 
end
