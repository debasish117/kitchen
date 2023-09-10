class Item < ApplicationRecord
	belongs_to :category
	belongs_to :restaurant
	belongs_to :customer
	has_many :reviews, as: :reviewable
	has_one :pricing
end
