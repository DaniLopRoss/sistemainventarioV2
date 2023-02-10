class Addcolumnfromareas < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key "areas", "departamentos", column: "id_departamento", primary_key: "id_departamento"
  end
end
