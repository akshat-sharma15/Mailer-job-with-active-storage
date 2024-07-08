Rails.application.routes.draw do
  root "users#index"
  # get "users/index"
  # # get "user/new", to "user#new" 
  # get "/users/new", to: "users#new"
  
  resources :users
end
