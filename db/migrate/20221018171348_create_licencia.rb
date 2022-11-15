class CreateLicencia < ActiveRecord::Migration[7.0]
  def change
    create_table :licencia, :primary_key => :id_licencia  do |t|
      t.string :nombre
      t.integer :anio
      t.string :num_licencia

      t.timestamps
    end
    
  end
end
