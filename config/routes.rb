Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :jobs, only: [:index, :show]
  resources :users, only: [:show]
  resources :applications, only: [:update, :create]
  namespace :dashboard do
    resources :jobs, only: [:index, :show, :new, :create]
    resources :applications, only: [:index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
