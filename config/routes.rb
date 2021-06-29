Rails.application.routes.draw do
  devise_for :users
  resources :achievement do
    resources :encouragements, only: [ :new,:create ]
  end

  namespace :api do
    resources :achievement, only: [:index]
  end
  root to: 'welcome#index'
end
