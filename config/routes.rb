Rails.application.routes.draw do
  resources :line_items
  resources :orders
  resources :products 
  resources :categories

  devise_for :users

  root to: 'categories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
