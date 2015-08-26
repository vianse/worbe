class CreateObjetivos < ActiveRecord::Migration
  def change
    create_table :objetivos do |t|
      t.references :cv, index: true
      t.references :idioma, index: true
      t.references :user, index: true
      t.string :objetivos

      t.timestamps
    end
  end
end
