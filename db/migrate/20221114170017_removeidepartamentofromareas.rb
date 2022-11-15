class Removeidepartamentofromareas < ActiveRecord::Migration[7.0]
  def change
    remove_column :areas, :id_departamento, :integer

  end
end
