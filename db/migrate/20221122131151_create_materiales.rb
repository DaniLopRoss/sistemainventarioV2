class CreateMateriales < ActiveRecord::Migration[7.0]
  def change
    create_table :materiales, :primary_key => :id_material do |t|
      t.string :nombre
      t.string :caracteristicas
      t.integer :existencia

      t.timestamps
    end
  end
end
