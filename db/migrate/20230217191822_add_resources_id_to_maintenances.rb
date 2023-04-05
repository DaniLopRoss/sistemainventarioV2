class AddResourcesIdToMaintenances < ActiveRecord::Migration[7.0]
  def change
    add_reference :maintenances, :resource, null: false, foreign_key: true
  end
end
