class CreateSolicituds < ActiveRecord::Migration[7.0]
  def change
    create_table :solicituds, :primary_key => :id_solicitud do |t|
          t.date :fecha
          t.text :descripcion
        
  
          t.timestamps
      end
    end
    end
