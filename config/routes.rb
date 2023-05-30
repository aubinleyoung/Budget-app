Rails.application.routes.draw do
  
  get 'pages/splash'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  root 'pages#splash'
  resources :users, only: %i[index show]
  resources :categories, only: %i[index show new create destroy]
  resources :budgets, only: %i[index show new create destroy]
  end
    