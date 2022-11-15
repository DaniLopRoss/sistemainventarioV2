class CreateEquipos < ActiveRecord::Migration[7.0]
  def change
    create_table :equipos, :primary_key => :serie do |t|
      t.string :tipo
        t.string :modelo
        t.string :serial
        t.string :observaciones
        t.string :ram
        t.string :disco_duro
        t.integer :id_tipos
        t.integer :id_marca
        t.integer :id_departamento
        t.integer :id_area
        t.string :id_licencia
        
  
        t.timestamps
      end
      add_foreign_key "equipos", "tipos", column: "id_tipos", primary_key: "id"
      add_foreign_key "equipos", "marcas", column: "id_marca", primary_key: "id_marca"
      add_foreign_key "equipos", "departamentos", column: "id_departamento", primary_key: "id_departamento"
      add_foreign_key "equipos", "areas", column: "id_area", primary_key: "id_area"
      add_foreign_key "equipos", "licencia", column: "id_licencia", primary_key: "id_licencia"
  end
end
