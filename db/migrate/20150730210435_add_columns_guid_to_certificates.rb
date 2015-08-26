class AddColumnsGuidToCertificates < ActiveRecord::Migration
  def change
    add_column :certificates, :guid, :string
  end
end
