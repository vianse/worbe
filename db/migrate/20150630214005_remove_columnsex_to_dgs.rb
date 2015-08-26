class RemoveColumnsexToDgs < ActiveRecord::Migration
  def change
    remove_column :dgs, :Puesto, :string
    remove_column :dgs, :description_short, :string
  end
end
