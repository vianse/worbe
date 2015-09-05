class CreateFavoritos < ActiveRecord::Migration
  def change
    create_table :favoritos do |t|
      t.string :name
      t.string :guid

      t.timestamps
    end
  end
end
