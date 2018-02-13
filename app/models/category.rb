class Category < ApplicationRecord
	belongs_to :restaurant, optional: true
	has_many :subcategories
	def self.search(search)
	  if search
	    where('name LIKE ?', "%#{search}%")
	  else
	    all
	  end
	end
end
