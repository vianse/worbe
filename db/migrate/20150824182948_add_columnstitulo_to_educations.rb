class AddColumnstituloToEducations < ActiveRecord::Migration
  def change
    add_column :educations, :title, :string
  end
end
