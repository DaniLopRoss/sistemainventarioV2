class Area < ApplicationRecord 
    belongs_to :departamento
    validates :nombre , :uniqueness => true
end
