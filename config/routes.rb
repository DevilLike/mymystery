Mymystery::Application.routes.draw do
  devise_for :admins
  devise_for :users
  devise_for :clients
  resources :clients
  resources :cars
  resources :deals
  resources :requests
  resources :sales
  root :to => "cars#index"
end