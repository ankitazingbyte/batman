class CategorySerializer < ActiveModel::Serializer
	include Rails.application.routes.url_helpers
  attributes :id, :name, :restaurant_id, :links
  has_many :subcategories

  def links
    {
      self: category_path(object.id)
    }
  end

end
