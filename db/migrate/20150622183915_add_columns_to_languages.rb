class AddColumnsToLanguages < ActiveRecord::Migration
  def change
    add_column :languages, :read, :number
    add_column :languages, :write, :number
    add_column :languages, :spoken, :number
  end
end
