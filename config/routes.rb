Rails.application.routes.draw do
  resources :stops
  resources :vehicles
  resources :days
  resources :routes
  resources :stations
  root 'pages#home'
  get '/search' => 'pages#search'
  get '/result' => 'routes#result'
end
