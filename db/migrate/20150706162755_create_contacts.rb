class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.references :business, index: true
      t.string :name
      t.string :last_name
      t.string :office
      t.string :email
      t.string :mobile_phone
      t.string :fixed_phone
      t.string :office_phone
      t.string :ext

      t.timestamps
    end
  end
end
