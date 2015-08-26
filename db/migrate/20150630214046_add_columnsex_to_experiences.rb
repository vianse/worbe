class AddColumnsexToExperiences < ActiveRecord::Migration
  def change
    add_column :experiences, :Puesto, :string
    add_column :experiences, :description_short, :string
  end
end
