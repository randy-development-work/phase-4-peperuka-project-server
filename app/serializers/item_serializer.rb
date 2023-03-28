class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :vendor, :vendor_contact, :location, :price, :category_id

  belongs_to :category
end
