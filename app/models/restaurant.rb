class Restaurant < ApplicationRecord
    has_many :items
    has_many :reviews, as: :reviewable
    has_many :customers
    has_many :orders
end
