json.partial! "restaurants/restaurant", restaurant: @restaurant
json.array! @categories, partial: 'categories/category', as: :category