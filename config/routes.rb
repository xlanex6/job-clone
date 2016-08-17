Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'

  resources :jobs, only: [:index, :show]
  resources :users, only: [:show]
  resources :applications, only: [:update, :create]
  namespace :dashboard do
    resources :jobs, only: [:index, :show, :new, :create]
    resources :applications, only: [:index]
    resources :users, only: [:edit, :show, :update]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
