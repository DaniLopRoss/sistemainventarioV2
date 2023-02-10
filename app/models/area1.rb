class Area1 < ApplicationRecord
   #has_many :departamento1s
    belongs_to :departamento1 , :autosave => true 
  
end
   

@departamento1s = Departamento1.all
@departamento1s.select( :nombre)
