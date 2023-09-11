class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_items
  has_many :items, through: :order_items

  validates_presence_of :items

  enum :status,  { processing: 0, ready: 1, cancelled: 2, completed: 3, delivered: 4 }

  # def place_order
  #   customer_restaurant_order.create(customer_id: self.customer_id, restaurant_id: self.restaurant_id)
  # end

end
