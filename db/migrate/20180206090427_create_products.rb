class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :image
      t.text :description
      t.string :price
      t.integer :subcategory_id

      t.timestamps
    end
  end
end
