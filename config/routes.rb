Rails.application.routes.draw do
  resources :delivery_boys
  resources :ratings
  resources :checkouts
  # post 'user_token' => 'user_token#create'
  get 'order_items/create'

  get 'order_items/update'

  get 'order_items/destroy'

  get 'carts/show'

  resources :tastes
	resources :subcategories
  resources :products

	resources :restaurants
	resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy] 
  resources :orders
  devise_for :users

  namespace :api do
    namespace :v1 do
        resources :sessions, only: :create
        resources :registrations, only: :create
    end 
  end 
end
