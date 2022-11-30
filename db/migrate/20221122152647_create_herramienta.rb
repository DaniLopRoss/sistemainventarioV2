class CreateHerramienta < ActiveRecord::Migration[7.0]
  def change
    create_table :herramienta, :primary_key => :id_herramienta do |t|
      t.string :nombre
      t.string :caracteristicas
      t.integer :existencia
      t.string :estatus

      t.timestamps
    end
  end
end
