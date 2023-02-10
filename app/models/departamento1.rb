class Departamento1 < ApplicationRecord
    #belongs_to :area1
    # has_many :area1, :autosave => true
    # accepts_nested_attributes_for :area1
    # belongs_to :client, :autosave => true
	has_many :area1s, :autosave => true


def departamento1_attributes=(departamento1_attributes)

    if !attr_hash.empty?
    self.departamento1=Departamento1.find_or_create_by(attr_hash)
    end
end
end
