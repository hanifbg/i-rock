Rails.application.routes.draw do
  resources :achievement, only: [:new,:create]
  root to: 'welcome#index'
end
