class Departamento < ApplicationRecord
         has_many :areas
         has_many :equipos

         validates :nombre , :id_area, :presence => true 
         validates :nombre, :uniqueness => true 
end
