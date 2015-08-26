class AddColumnsToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :status, :string
    add_column :jobs, :countclicks, :integer
  end
end
