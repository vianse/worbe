class AddColumnsGuidToExperiences < ActiveRecord::Migration
  def change
    add_column :experiences, :guid, :string
  end
end
