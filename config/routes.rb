Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks',
                  registrations: 'users/registrations'}
  root to: 'pages#home'

  resources :jobs, only: [:index, :show] do
      resources :applications, only: [:create]
    end
  resources :users, only: [:show]
  namespace :dashboard do
    resources :jobs, only: [:index, :show, :new, :create]
    resources :applications, only: [:index, :update]
    resources :users, only: [:edit, :show, :update]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
