Mymystery::Application.routes.draw do
  resources :ideas

  resources :roles
  devise_for :users
  root :to => "roles#index"
end