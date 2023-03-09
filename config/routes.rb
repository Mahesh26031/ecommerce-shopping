Rails.application.routes.draw do
  get 'carts/show'

  resources :products
  resources :shops, only:[:index,:show]
  resources :order_items
  resource :carts, only:[:show]
  root "shops#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
