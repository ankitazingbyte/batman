class ProductSerializer < ActiveModel::Serializer
	# mount_uploader :image, ImageUploader
	include Rails.application.routes.url_helpers
	attributes :id, :name, :price, :description, :image, :subcategory_id, :links
	has_many :tastes
	has_many :order_items

	def links
    {
      self: product_path(object.id)
    }
  end
end
