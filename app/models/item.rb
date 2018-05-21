class Item < ApplicationRecord
	belongs_to :category
	belongs_to :restaurant
	has_many :reviews, as: :reviewable
	has_one :pricing
end
