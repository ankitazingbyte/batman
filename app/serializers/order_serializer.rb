class OrderSerializer < ActiveModel::Serializer
  attributes :id, :subtotal, :total, :order_status_id
  belongs_to :order_status
  has_many :order_items

end
