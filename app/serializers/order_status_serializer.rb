class OrderStatusSerializer < ActiveModel::Serializer
  attributes :id
  has_many :orders
end
