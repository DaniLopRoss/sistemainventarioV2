class Resource < ApplicationRecord
         validates :nombre , :presence => true 
         validates :nombre, :uniqueness => true 
         belongs_to :maintenance, autosave: true
         
         
        
end
