class User < ApplicationRecord
    has_secure_password
    has_many :carts

    validates :username, presence: true, uniqueness: true
end
