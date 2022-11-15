class AddareasRefTodepartamentos < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key "departamentos", "areas", column: "id_area", primary_key: "id_area"
  
  end
end
