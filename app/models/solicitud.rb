class Solicitud < ApplicationRecord
       validates :zone_id, :fecha, :descripcion , :usuario_id , :presence => true
       belongs_to :zone
       has_one :usuario
end
