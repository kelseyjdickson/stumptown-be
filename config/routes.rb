Rails.application.routes.draw do
  resources :order_items
  resources :items
  resources :orders
   resources :users
  post '/users/login', to: "users#login"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
