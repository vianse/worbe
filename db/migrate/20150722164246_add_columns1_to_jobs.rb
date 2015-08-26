class AddColumns1ToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :profession, :string
    add_column :jobs, :provision, :string
    add_column :jobs, :tools, :text
    add_column :jobs, :knowledge, :text
  end
end
