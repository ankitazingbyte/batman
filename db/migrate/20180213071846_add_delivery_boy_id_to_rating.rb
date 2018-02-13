class AddDeliveryBoyIdToRating < ActiveRecord::Migration[5.1]
  def change
    add_reference :ratings, :delivery_boy, foreign_key: true
  end
end
