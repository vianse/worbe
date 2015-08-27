class AddColumns2ToMyTag < ActiveRecord::Migration
  def change
    add_column :my_tags, :name, :string
  end
end
