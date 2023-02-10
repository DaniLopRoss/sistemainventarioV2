class RemoveidAreasfromdepartamento < ActiveRecord::Migration[7.0]
  def change
    remove_column :departamentos, :id_area
  end
end
