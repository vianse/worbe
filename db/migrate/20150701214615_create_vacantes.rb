class CreateVacantes < ActiveRecord::Migration
  def change
    create_table :vacantes do |t|
      t.string :name
      t.string :description
      t.string :business
      t.integer :business_id

      t.timestamps
    end
  end
end
