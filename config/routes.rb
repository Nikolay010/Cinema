require 'sidekiq/web'

Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'

  root 'pages#home'

  devise_for :users
  resources :movies do
    member do
      patch 'vote_up'
      patch 'vote_down'
    end
  end
end
