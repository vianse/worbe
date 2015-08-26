class AddColumnsGuidToEducations < ActiveRecord::Migration
  def change
    add_column :educations, :guid, :string
  end
end
