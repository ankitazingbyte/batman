class AddCategoryIdToSubcategory < ActiveRecord::Migration[5.1]
  def change
    t.integer :subcategories, :category_id
  end
end
