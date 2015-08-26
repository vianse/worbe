class AddColumnsToDg < ActiveRecord::Migration
  def change
    add_column :dgs, :photo, :string
  end
end
