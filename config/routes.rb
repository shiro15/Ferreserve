Rails.application.routes.draw do
  root "top#index"
  get "charge" => "top#charge", as: "charge"
  get "search" => "top#search", as: "search"

  get "login" => "sessions#new", as: "login"
  post "login" => "sessions#create"
  delete "login" => "sessions#destroy"
  
  get "sign_up" => "users#new", as: "sign_up"
  post "sign_up" => "users#create"
  
  resources :users, only: [:show, :create]
  resources :routes
  resources :ships
  resources :services do
     collection { get "search" }
  end
  resources :reservations
  
  resource :session, only: [:create, :destroy]
  resource :account

  # namespace :admin do
  #   root to: "top#index"
  #   resources :ships
  #   resources :services
  #   resources :reservation
  # end
end
