class AddDetailsToMonster < ActiveRecord::Migration[7.0]
  def change
    add_column :monsters, :privado, :boolean
    add_column :monsters, :fecha_nacimiento, :Date
  end
end
