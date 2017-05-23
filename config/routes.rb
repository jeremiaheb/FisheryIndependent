Rails.application.routes.draw do
  resources :animals
  resources :observers
  resources :captains
  resources :trips
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
