Rails.application.routes.draw do
  devise_for :users
  resources :simulados
  root to: 'home#index'
end
