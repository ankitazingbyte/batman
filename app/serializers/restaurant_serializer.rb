class RestaurantSerializer < ActiveModel::Serializer
	include Rails.application.routes.url_helpers
    attributes :id, :name, :address, :phone, :links, :user_id
    has_many :categories
    has_many :ratings
  
  def links
    {
      self: restaurant_path(object.id)
    }
  end
end
