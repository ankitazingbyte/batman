class DeliveryBoySerializer < ActiveModel::Serializer
	# mount_uploader :image, ImageUploader
  attributes :id, :name, :address, :image, :total_delivery
  has_many :ratings, dependent: :destroy
end
