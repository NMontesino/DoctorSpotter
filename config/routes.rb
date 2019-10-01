Rails.application.routes.draw do

  root 'patients#login'

  get 'patients/verification', to:'patients#verification', as: 'verification_pacient'

  resources :appointments
  resources :doctors
  resources :specialties
  resources :insurances
  resources :patients
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
