class CategorySerializer < ActiveModel::Serializer
  attributes :id, :veg, :non_vag, :restaurant_id
end
