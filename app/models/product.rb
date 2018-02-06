class Product < ApplicationRecord
	has_many :tastes
	belongs_to :subcategory, optional: true

	has_many :order_items
  	# default_scope { where(active: true) }
end


