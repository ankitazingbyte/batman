class CreateCheckouts < ActiveRecord::Migration[5.1]
  def change
    create_table :checkouts do |t|
      t.time :delivery_time
      t.date :delivery_date
      t.string :delivery_address
      t.string :payment_mode

      t.timestamps
    end
  end
end