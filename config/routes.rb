Rails.application.routes.draw do

  devise_for :users
  root 'products#index'
  namespace :admin do
    resources :orders, only: [:index]
  end
  resources :products
  resources :line_items
  resources :carts do
    resources :charges, only: [:create, :new]
  end
  resources :users

end
