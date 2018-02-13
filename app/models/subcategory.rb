class Subcategory < ApplicationRecord
	has_many :products
	belongs_to :category, optional: true
	def self.search(search)
	  if search
	    where('name LIKE ?', "%#{search}%")
	  else
	    all
	  end
	end
end
