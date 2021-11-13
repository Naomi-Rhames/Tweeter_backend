Rails.application.routes.draw do
  resources :users, only: [:create]
  resources :tweets, only:[:create, :index]
  get "/tweeter", to: "sessions#autologin"
  get "/tweets", to: "tweet#index"
  post "/sessions", to: "sessions#login"
end
