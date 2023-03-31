Rails.application.routes.draw do
  resources :carts, only: [:index, :create]
  resources :items, only: [:index, :show, :create, :update, :destroy]
  resources :categories, only: [:index, :show, :destroy, :create]
  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  delete "/carts/:id", to: "carts#destroy"
  delete "/carts", to: "carts#checkout"
  get "/pata/:id", to: "categories#locate"
  patch "/categories/:id", to: "categories#update"

  # admin
  post "/adminin", to: "sessions#in"
  delete "/adminout", to: "sessions#out"
  get "/ad", to: "admins#show"
  post "/newadmin", to: "admins#create"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
