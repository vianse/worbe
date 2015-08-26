class AddColumnsGuidToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :guid, :string
  end
end
