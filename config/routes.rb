Rails.application.routes.draw do
  resources :app_groups
  resources :home_groups
  resources :inner_groups
  resources :stores
  resources :accounts
  resources :payments
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
