Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :jobs
  namespace :dashboard do
    resources :jobs, only: [:index, :show, :new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
