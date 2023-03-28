class AddVendorContactToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :vendor_contact, :string
  end
end
