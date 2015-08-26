class AddColumnsToBusiness < ActiveRecord::Migration
  def change
    add_column :businesses, :verificated, :boolean
  end
end
