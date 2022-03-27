Rails.application.routes.draw do
  resources :appointments
  resources :users
  resources :doctors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'landing#index'
end

