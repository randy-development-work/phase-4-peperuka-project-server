Rails.application.routes.draw do
  resources :carts, only: [:index, :create]
  resources :items, only: [:index]
  resources :categories, only: [:index, :show]
  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  delete "/carts/:id", to: "carts#destroy"
  delete "/carts", to: "carts#checkout"

  # admin
  post "/adminin", to: "sessions#in"
  post "/adminout", to: "sessions#out"
  get "/god", to: "admins#show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
