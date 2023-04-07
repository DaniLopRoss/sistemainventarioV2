class Equipment < ApplicationRecord
         belongs_to :shape, autosave: true
        
         belongs_to :zone, autosave: true
         belongs_to :brand, autosave: true
         belongs_to :licence, optional: true
         has_many :maintenance
         validates  :shape_id, :brand_id, :zone_id, :estatus, :presence => true 
         validates :serial, :uniqueness => true 

         


end
