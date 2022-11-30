class Removetipofromequipos < ActiveRecord::Migration[7.0]
  def change
    remove_column :equipos, :tipo, :string
  end
end
