class CartSerializer < ActiveModel::Serializer
	attributes :id, :order_items, :current_order
	has_many :order_items
	attributes :id, :subtotal, :total, :order_status_id
	belongs_to :order_status
end
