class AddColumnsGuidToMyTags < ActiveRecord::Migration
  def change
    add_column :my_tags, :guid, :string
  end
end
