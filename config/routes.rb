Rails.application.routes.draw do
  resources :stops
  resources :vehicles
  resources :days
  resources :routes
  resources :stations
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
