class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.references :user, index: true
      t.string :name
      t.string :business_name
      t.string :rfc
      t.references :country, index: true
      t.references :state, index: true
      t.references :city, index: true
      t.string :Postal_Code
      t.string :address
      t.string :sector
      t.string :Number_of_employees
      t.string :business_type
      t.string :business_description
      t.string :web
      t.string :logo

      t.timestamps
    end
  end
end
