Rails.application.routes.draw do

  devise_for :users
  resources :events
  resources :users
  resources :attendances
  resources :charges

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'events#index'
end
