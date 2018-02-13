class Restaurant < ApplicationRecord
	has_many :categories
	has_many :ratings
	belongs_to :user
	def self.search(search)
	  if search
	    where('name LIKE ?', "%#{search}%")
	  else
	    all
	  end
	end
end
