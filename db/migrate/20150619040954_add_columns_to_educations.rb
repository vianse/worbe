class AddColumnsToEducations < ActiveRecord::Migration
  def change
    add_column :educations, :level, :string
    add_column :educations, :user_id, :integer
  end
end
