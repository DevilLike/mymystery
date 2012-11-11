Mymystery::Application.routes.draw do
  resources :literatures

  resources :ideas

  resources :requests

  resources :roles
  devise_for :users
  root :to => "roles#index"
end