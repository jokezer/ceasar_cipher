Rails.application.routes.draw do
  root to: 'application#index'

  namespace :api do
    resources :users, only: [:show, :create, :update]
  end

  get '*id', to: 'application#index'
end
