class AddTasteToOrderItem < ActiveRecord::Migration[5.1]
  def change
    add_column :order_items, :taste, :string
  end
end
