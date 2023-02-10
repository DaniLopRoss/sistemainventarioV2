class CreateArea1s < ActiveRecord::Migration[7.0]
  def change
      create_table :area1s , :primary_key => :id_area do |t|
      t.string :nombre
      t.integer :id_departamento
      t.timestamps
    end
    add_foreign_key "area1s", "departamento1s", column: "id_departamento", primary_key: "id_departamento"
  end
end
