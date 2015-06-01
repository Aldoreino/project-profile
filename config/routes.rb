Rails.application.routes.draw do
  root 'welcome#index'
  resources :profiles
  resources :users
  resources :sessions
end
