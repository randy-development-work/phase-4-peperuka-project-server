class CreateCarts < ActiveRecord::Migration[7.0]
  def change
    create_table :carts do |t|
      t.string :name
      t.string :image
      t.string :vendor
      t.integer :price

      t.timestamps
    end
  end
end
