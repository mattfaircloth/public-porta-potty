Rails.application.routes.draw do
  get 'activity/mine'

  get 'activity/feed'
  root to: 'bathrooms#index'
  resources :comments
  resources :locations
  resources :bathroom_locations
  resources :bathrooms
  resources :users
  get "/signup", to: "users#new", as: "signup"
  get "/login", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  delete "/sessions", to: "sessions#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
