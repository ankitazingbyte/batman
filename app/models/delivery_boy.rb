class DeliveryBoy < ApplicationRecord
	# mount_uploader :image, ImageUploader
	has_many :ratings
end
