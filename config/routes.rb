Rails.application.routes.draw do

  devise_for :users
  root 'products#index'

  resources :products
  resources :line_items
  resources :carts
  resources :users

end
