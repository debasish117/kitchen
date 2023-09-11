class Restaurant < ApplicationRecord
    has_many :items
    has_many :reviews, as: :reviewable
    has_many :customers
    has_many :customer_restaurant_orders
    has_many :orders, through: :customer_restaurant_orders

    alias_method :menu, :items
end
