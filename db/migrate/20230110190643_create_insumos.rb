class CreateInsumos < ActiveRecord::Migration[7.0]
  def change
    create_table :insumos , :primary_key => :id_insumo do |t|
      t.string :nombre
      t.string :caracteristicas
      t.integer :existencia
      t.string :estatus

      t.timestamps
    end
  end
end
