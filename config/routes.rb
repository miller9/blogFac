Rails.application.routes.draw do
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "bienvenida", to: "home#index"

  get "articles/new", to: "articles#new"
  get "articles/:id", to: "articles#show" #using :id to get specific values inside SHOW
  post "articles", to: "articles#create" # solves GET route issue..

end
