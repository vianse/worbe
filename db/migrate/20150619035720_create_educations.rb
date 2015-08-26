class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :school
      t.string :yearInitial
      t.string :yearFinal
      t.boolean :graduated
      t.string :DocumentReceived
      t.string :average
      t.string :comments

      t.timestamps
    end
  end
end
