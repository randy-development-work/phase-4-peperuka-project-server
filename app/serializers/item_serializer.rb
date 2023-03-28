class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :vendor, :location, :price

  belongs_to :category
end
