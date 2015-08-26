class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.references :state, index: true
      t.references :country, index: true
      t.string :name
      t.string :code_city

      t.timestamps
    end
  end
end
