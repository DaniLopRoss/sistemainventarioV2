class ChangeForeignKeyForArea1s < ActiveRecord::Migration[7.0]
  def change
    rename_column :area1s, :id_departamento, :id_departamento
  end
end
