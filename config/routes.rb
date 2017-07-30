Rails.application.routes.draw do
  get 'main/index'
  post 'jump', to: 'clients#index'

  root :to => 'main#index'

  resources :branches
  resources :clients
  resources :orders
  resources :payments
  resources :products
  resources :purchases, only: [:destroy]
  resources :users
  resources :user_sessions

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
