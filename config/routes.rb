Rails.application.routes.draw do
  # post 'user_token' => 'user_token#create'
  get 'order_items/create'

  get 'order_items/update'

  get 'order_items/destroy'

  get 'carts/show'

  #root 'restaurants#index'
  resources :tastes
  resources :products
	resources :subcategories
	resources :restaurants
	resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy] 
  resources :orders

resources :users
  
end
