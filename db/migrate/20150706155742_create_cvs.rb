class CreateCvs < ActiveRecord::Migration
  def change
    create_table :cvs do |t|
      t.references :user, index: true
      t.references :idioma,  index: true
      t.string :title

      t.timestamps
    end
  end
end
