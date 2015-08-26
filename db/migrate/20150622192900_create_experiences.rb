class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :datei
      t.string :datef
      t.string :business
      t.string :description
      t.integer :user_id

      t.timestamps
    end
  end
end
