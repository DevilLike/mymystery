Mymystery::Application.routes.draw do
  get "users/index"

  devise_for :users
  devise_for :clients
  resources :clients
  resources :cars
  resources :deals
  resources :requests
  resources :roles
  root :to => "cars#index"
end