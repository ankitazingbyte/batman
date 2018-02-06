json.partial! "restaurants/restaurant", restaurant: @restaurant

@restaurant.categories.each do |category| 
json.array! categories, partial: 'categories/category', as: :category
end