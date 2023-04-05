class CreateReportes < ActiveRecord::Migration[7.0]
  def change
    create_table :reportes , :primary_key => :id_reporte do |t|
      t.date :fecha
      t.text :observaciones
      t.string :tipo_problema

      t.timestamps
    end
  end
end
