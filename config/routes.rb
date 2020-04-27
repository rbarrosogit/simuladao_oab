Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :simulados do
    resources :topics
  end
  post '/simulados/finish', to: "simulados#finish", as: :finish_simulado
  resources :questions
  root to: 'home#index'
end
