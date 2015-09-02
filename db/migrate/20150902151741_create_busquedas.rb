class CreateBusquedas < ActiveRecord::Migration
  def change
    create_table :busquedas do |t|
      t.string :titulo
      t.string :nombre
      t.string :edad
      t.string :telefono
      t.string :telefono1
      t.string :photo
      t.string :email
      t.string :guid

      t.timestamps
    end
  end
end
