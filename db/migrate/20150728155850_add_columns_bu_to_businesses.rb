class AddColumnsBuToBusinesses < ActiveRecord::Migration
  def change
    add_column :businesses, :contactname, :string
    add_column :businesses, :contactemail, :string
    add_column :businesses, :phone1, :string
    add_column :businesses, :phone2, :string
  end
end
