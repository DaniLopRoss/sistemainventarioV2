class Tipo < ApplicationRecord
    has_many :equipos

    validates :nombre , :presence => true 
    validates :nombre, :uniqueness => true 
end
