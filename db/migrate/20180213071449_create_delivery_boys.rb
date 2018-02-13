class CreateDeliveryBoys < ActiveRecord::Migration[5.1]
  def change
    create_table :delivery_boys do |t|
      t.string :name
      t.string :address
      t.string :image
      t.string :total_delivery

      t.timestamps
    end
  end
end
