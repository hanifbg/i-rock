Rails.application.routes.draw do
  resources :achievement, only: [:new, :create, :show]
  root to: 'welcome#index'
end
