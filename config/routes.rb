Rails.application.routes.draw do
  get "/me", to: 'users#show'
  post "/login", to: 'sessions#create'
  delete "/logout", to: 'sessions#destroy'
  resources :articles, only: [:index, :show]
end
