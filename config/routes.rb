Rails.application.routes.draw do
  resources :simulados
  root 'home#index'
end
