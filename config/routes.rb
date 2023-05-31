Rails.application.routes.draw do
  
  get 'pages/splash'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  root 'pages#splash'
  resources :users, only: %i[index show]
  resources :categories, only: %i[index show new create destroy] do
  resources :transactions, only: %i[new create destroy]
  end
  
  end
    