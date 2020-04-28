Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'home#index'
  resources :simulados
  devise_for :users
  get '/meuperfil', to: 'users#show', as: 'user'
  get '/meuperfil/edit', to: 'users#edit', as: 'edit_name'
  patch '/meuperfil', to: 'users#update'
  put '/meuperfil', to: 'users#update'
end
