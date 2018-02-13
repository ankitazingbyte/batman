class Product < ApplicationRecord
	# mount_uploader :image, ImageUploader
	has_many :tastes
	belongs_to :subcategory, optional: true
	has_many :order_items
  	# default_scope { where(active: true) }
  	def self.search(search)
	  if search
	    where('name LIKE ?', "%#{search}%")
	  else
	    all
	  end
	end
end


