class Customer < ApplicationRecord
    has_many :items #TO VIEW MENU
    has_many :customer_restaurant_orders
    has_many :orders, through: :customer_restaurant_orders, foreign_key: :order_id

    def current_orders
        orders.ready
    end

    def previous_orders
        orders.completed
    end
end
