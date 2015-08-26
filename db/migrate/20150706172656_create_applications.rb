class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.references :business, index: true
      t.references :user, index: true
      t.references :job, index: true
      t.references :cv, index: true
      t.string :date_application

      t.timestamps
    end
  end
end
