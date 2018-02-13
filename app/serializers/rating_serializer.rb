class RatingSerializer < ActiveModel::Serializer
  attributes :id, :number, :restaurant_id, :delivery_boy_id
end
