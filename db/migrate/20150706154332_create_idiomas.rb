class CreateIdiomas < ActiveRecord::Migration
  def change
    create_table :idiomas do |t|
      t.string :idioma

      t.timestamps
    end
  end
end
