class CreateDgs < ActiveRecord::Migration
  def change
    create_table :dgs do |t|
      t.string :name
      t.string :datebirthday
      t.string :age
      t.string :address
      t.string :phone1
      t.string :phone2
      t.string :email

      t.timestamps
    end
  end
end
