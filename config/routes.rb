Rails.application.routes.draw do
  root "articles#index"
  mount Motor::Admin => '/admin'

  get "/articles", to: "articles#index" 

  get "/home", to: "articles#home"

  get "/home/secondhome", to: "articles#home", as: "fakehome"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
