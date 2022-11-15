class Addestatustoequipo < ActiveRecord::Migration[7.0]
  def change
    add_column :equipos, :estatus, :string
  end
end
