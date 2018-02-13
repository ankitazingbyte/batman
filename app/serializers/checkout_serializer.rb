class CheckoutSerializer < ActiveModel::Serializer
  attributes :id, :delivery_time, :delivery_date, :delivery_address, :payment_by
end