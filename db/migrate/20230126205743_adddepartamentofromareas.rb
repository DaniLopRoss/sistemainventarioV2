class Adddepartamentofromareas < ActiveRecord::Migration[7.0]
  
  def change
    
    add_column :areas, :id_departamento, :integer
  end 
    
  end

