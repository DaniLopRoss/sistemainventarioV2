class CreateAreas < ActiveRecord::Migration[7.0]
  def change
    create_table :areas,  :primary_key => :id_area do |t|
      t.string :nombre
      t.integer :id_departamento

      t.timestamps
    end
    add_foreign_key "areas", "departamentos", column: "id_departamento", primary_key: "id_departamento"
  end
end
