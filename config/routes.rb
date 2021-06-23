Rails.application.routes.draw do
  resources :achievement
  root to: 'welcome#index'
end
