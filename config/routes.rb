Rails.application.routes.draw do
  resources :orders
  resources :products
  resources :categories

  root to: 'categories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
