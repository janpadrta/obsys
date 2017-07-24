Rails.application.routes.draw do
  get 'main/index'
  post 'jump', to: 'clients#index'

  root :to => 'main#index'

  resources :users
  resources :user_sessions
  resources :clients
  resources :products
  resources :orders
  resources :branches
  resources :purchases, only: [:destroy]

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
