class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.references :country, index: true
      t.string :name
      t.string :code_state

      t.timestamps
    end
  end
end
