class CartSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :vendor, :price
end
