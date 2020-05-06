Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'home#index'
  resources :simulados do
    resources :topics
  end
  devise_for :users
  get '/meuperfil/:id/simulado_results', to: "simulados#simulado_results", as: :simulado_results
  post '/simulados/:id/finish', to: "simulados#finish", as: :finish_simulado
  get '/meuperfil', to: 'users#show', as: 'user'
  get '/meuperfil/edit', to: 'users#edit', as: 'edit_name'
  patch '/meuperfil', to: 'users#update'
  put '/meuperfil', to: 'users#update'
  resources :questions
end