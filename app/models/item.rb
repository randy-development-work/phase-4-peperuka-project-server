class Item < ApplicationRecord
    belongs_to :category
    
    validates :name, presence: true
    validates :vendor_contact, presence: true
end
