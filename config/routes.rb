Rails.application.routes.draw do
  resources :appointments
  resources :doctors
  resources :specialties
  resources :insurances
  resources :patients
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
