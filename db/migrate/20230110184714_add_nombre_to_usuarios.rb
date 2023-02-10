class AddNombreToUsuarios < ActiveRecord::Migration[7.0]
  def change
    add_column :usuarios, :nombre, :string
    add_column :usuarios, :apellidouno, :string
    add_column :usuarios, :apellidodos, :string
    add_column :usuarios, :role, :string

  end
  execute "ALTER TABLE usuarios ADD PRIMARY KEY (rfc);"
end
