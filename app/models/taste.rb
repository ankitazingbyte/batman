class Taste < ApplicationRecord
	belongs_to :product, optional: true
end
