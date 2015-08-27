class AddColumns1ToCv < ActiveRecord::Migration
  def change
    add_column :cvs, :countclick, :string
  end
end
