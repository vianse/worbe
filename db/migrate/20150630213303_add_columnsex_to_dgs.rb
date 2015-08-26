class AddColumnsexToDgs < ActiveRecord::Migration
  def change
    add_column :dgs, :Puesto, :string
    add_column :dgs, :description_short, :string
  end
end
