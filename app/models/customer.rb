class Customer < ApplicationRecord
    has_many :orders

    validates :name, presence: true
    validates :email, presence: true
    
    def self.ransackable_attributes(auth_object = nil)
        ["name", "email", "created_at", "updated_at"]
    end

    def self.ransackable_attributes(auth_object = nil)
        ["orders"]
    end
end
