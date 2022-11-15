class RemoveareaFromdepartamentos < ActiveRecord::Migration[7.0]
  def change
    remove_column :departamentos, :area, :string
   
  end
end
