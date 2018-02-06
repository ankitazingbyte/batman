class Category < ApplicationRecord
	belongs_to :restaurant, optional: true
	has_many :subcategories
end
