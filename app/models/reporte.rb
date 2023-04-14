class Reporte < ApplicationRecord
  validates :fecha, :observaciones, :tipo_problema, :maintenance_id, :presence => true 
   has_one :maintenance, autosave: true
   attr_accessor :otro_tipo_problema

end
