class Marca < ApplicationRecord
    has_one :equipos
         
    validates :nombre , :presence => true 
    validates :nombre, :uniqueness => true 
end
