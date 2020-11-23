Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  resources :products
  resources :line_items
  resources :carts
end
