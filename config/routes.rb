Rails.application.routes.draw do
  resources :managers
  resources :animals
  resources :observers
  resources :captains
  resources :trips
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
