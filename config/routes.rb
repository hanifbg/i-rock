Rails.application.routes.draw do
  devise_for :users
  resources :achievement
  root to: 'welcome#index'
end
