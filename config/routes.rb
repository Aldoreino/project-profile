Rails.application.routes.draw do
  root 'welcome#index'
  resources :profiles
  resources :users
  get "/sessions/new" => "sessions#new"
  post "/sessions" => "sessions#create" # creates a new session
  get "/logout" => "sessions#destroy" # destroys the current session

end
