class CreateMyTags < ActiveRecord::Migration
  def change
    create_table :my_tags do |t|
      t.references :cv, index: true
      t.references :idioma, index: true
      t.references :user, index: true
      t.references :tag, index: true

      t.timestamps
    end
  end
end
