class AddColumnsdgsToDgs < ActiveRecord::Migration
  def change
    add_column :dgs, :guid, :string
  end
end
