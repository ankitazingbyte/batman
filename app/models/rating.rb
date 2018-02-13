class Rating < ApplicationRecord
	belongs_to :restaurant
	belongs_to :delivery_boy
end