Rails.application.routes.draw do

  get "/login", to: 'sessions#login', as: "login"
  post '/login', to:'sessions#verification', as: "verified"
  get '/logout', to: 'sessions#logout', as: 'logout'

  resources :appointments
  resources :doctors
  resources :specialties
  resources :insurances
  resources :patients
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
