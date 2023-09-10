class Customer < ApplicationRecord
    has_many :items, through: :restaurant #TO VIEW MENU
    has_many :orders, through: :order_items
    belongs_to :restaurant
end
