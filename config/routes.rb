Rails.application.routes.draw do
  get 'order_items/create'

  get 'order_items/update'

  get 'order_items/destroy'

  get 'carts/show'

  resources :tastes
  resources :products
	  resources :subcategories
	  resources :restaurants
	  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  
end
