class AddColumnsToCvs < ActiveRecord::Migration
  def change
    add_column :cvs, :guid, :string
  end
end
