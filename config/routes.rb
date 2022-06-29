require 'sidekiq/web'

Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'

  root 'movies#index'

  devise_for :users
  resources :movies, only: [:show, :edit, :create, :destroy, :update, :new] do
    member do
      patch 'vote_up'
      patch 'vote_down'
    end
  end

  resources :users do
    collection do
      get 'create_random'
    end
  end
end
