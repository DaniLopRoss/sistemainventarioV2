class Addidareatoareas < ActiveRecord::Migration[7.0]
  def change
    add_column :departamentos, :id_area, :integer
  end
end
