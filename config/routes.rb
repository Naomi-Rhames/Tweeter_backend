Rails.application.routes.draw do
  resources :users, only: [:create]
  resources :tweets, only:[:create, :index, :show] do 
    resources :comments, only: [:create]
  end
  get "/tweeter", to: "sessions#autologin"
  post "/sessions", to: "sessions#login"
end
