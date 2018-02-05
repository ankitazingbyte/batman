class CreateSubcategories < ActiveRecord::Migration[5.1]
  def change
    create_table :subcategories do |t|
      t.string :name
      t.float :price
      t.text :details
	        
      t.timestamps
    end
  end
end
