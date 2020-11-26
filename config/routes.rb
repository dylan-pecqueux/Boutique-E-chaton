Rails.application.routes.draw do

  devise_for :users
  root 'products#index'

  namespace :admin do
    resources :orders, only: [:index]
    resources :products
  end

  resources :products
  resources :line_items
  resources :carts, path: :mon_panier do
    resources :charges, only: [:create, :new], path: :paiement
  end
  resources :users, path: :mon_profil

end
