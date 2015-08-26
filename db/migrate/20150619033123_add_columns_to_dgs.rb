class AddColumnsToDgs < ActiveRecord::Migration
  def change
    add_column :dgs, :user_id, :integer
  end
end
