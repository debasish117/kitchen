class Customer < ApplicationRecord
    # has_many :items, through: :restaurant #TO VIEW MENU
    has_many :orders, as: :orderable
end
