class CartSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :vendor, :price

  belongs_to :user
end
