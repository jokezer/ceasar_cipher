Rails.application.routes.draw do
  root to: 'application#index'

  namespace :api do
    resources :users, only: :create
  end

  get '*id', to: 'application#index'
end
