class RestaurantSerializer < ActiveModel::Serializer
	include Rails.application.routes.url_helpers
    attributes :id,:name, :address, :phone, :links
    has_many :categories
  
  def links
    {
      self: restaurant_path(object.id)
    }
  end
end
