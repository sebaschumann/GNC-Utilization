Rails.application.routes.draw do
  resources :versions
  resources :installation_employees
  resources :kit_installations
  resources :employees
  resources :kit_verifications
  resources :tube_kits
  resources :tube_verifications
  resources :tubes
  resources :exam_types
  resources :technicians
  resources :gnc_charges
  resources :clients
  resources :cars
  resources :models
  resources :brands
  resources :service_stations
  resources :workshops
  resources :localities
  resources :provinces
  resources :countries
  devise_for :users

  root "countries#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
