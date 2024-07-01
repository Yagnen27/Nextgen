class Order < ApplicationRecord
    belongs_to :customer

    validates :customer_id, presence: true
    has_many :order_items
    has_many :products, through: :order_items

    validates :status, presence: true
    validates :total_price, numericality: { greater_than_or_equal_to: 0 }
  
    def self.ransackable_attributes(auth_object = nil)
      ["created_at", "customer_name", "id", "id_value", "status", "total_price", "updated_at"]
    end
  
    def self.ransackable_associations(auth_object = nil)
      ["customer"] # Replace with actual associations if any
    end
  
  end
  