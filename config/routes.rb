Rails.application.routes.draw do
  root 'welcome#index'

   match '/request' => 'profile#create', via: :post # post request to send data to Amazon S3

  resources :profiles
  resources :users
  get "/sessions/new" => "sessions#new"
  post "/sessions" => "sessions#create" # creates a new session
  delete "/logout" => "sessions#destroy" # destroys the current session

end
