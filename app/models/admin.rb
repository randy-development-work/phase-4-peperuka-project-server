class Admin < ApplicationRecord
    has_secure_password

    validates :admin_name, presence: true, uniqueness: true
end
