# config/routes.rb

Rails.application.routes.draw do
  resources :tasks

  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
      }

  root "tasks#index"
end
