class AddColumnsGuidToLanguages < ActiveRecord::Migration
  def change
    add_column :languages, :guid, :string
  end
end
