Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :simulados
  root to: 'home#index'
end
