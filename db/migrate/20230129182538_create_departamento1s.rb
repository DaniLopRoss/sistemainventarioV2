class CreateDepartamento1s < ActiveRecord::Migration[7.0]
  def change
    create_table :departamento1s, :primary_key => :id_departamento do |t|
        t.string :nombre
        t.integer :num_equipo
        t.timestamps
  end
end
end