class CreateDepartamentos < ActiveRecord::Migration[7.0]
  def change
      
      create_table :departamentos, :primary_key => :id_departamento  do |t|
      t.string :nombre
      t.integer :num_equipo
      t.string :area

      t.timestamps
    end
  end
end
