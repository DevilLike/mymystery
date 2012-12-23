Mymystery::Application.routes.draw do
  devise_for :clients
  resources :cars
  resources :clients
  resources :deals
  resources :requests
  resources :roles
  devise_for :users, :skip => :registrations
  root :to => "cars#index"
end