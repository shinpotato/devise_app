Rails.application.routes.draw do
  devise_for :views
  get 'users/show'
  devise_for :users

  root to: 'items#index'
  resources :items

  resources :users, only: :show
end
