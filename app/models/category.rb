class Category < ApplicationRecord
	belongs_to :restaurant, optional: true
end
