class Pricing < ApplicationRecord
    belongs_to :item, optional: true
end
