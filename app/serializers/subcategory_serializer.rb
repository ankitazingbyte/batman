class SubcategorySerializer < ActiveModel::Serializer
	include Rails.application.routes.url_helpers
  attributes :id, :name, :price, :details, :category_id, :links
  has_many :products

  def links
    {
      self: subcategory_path(object.id)
    }
  end
end
