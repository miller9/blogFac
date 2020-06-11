Rails.application.routes.draw do

  devise_for :users
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "bienvenida", to: "home#index"

  root to: "home#index"
  resources :categories
  # get "articles/user/:user_id", to: "articles#from_author"
  resources :articles do
    get "user/:user_id", to: "articles#from_author", on: :collection
  end

  #get "articles", to: "articles#index"
  #get "articles/new", to: "articles#new", as: :new_articles
  #get "articles/:id", to: "articles#show" #using :id to get specific values inside SHOW
  #get "articles/:id/edit", to: "articles#edit"

  #patch "articles/:id", to: "articles#update", as: :article # nombre de la ruta
  #post "articles", to: "articles#create" # solves GET route issue..

  #delete "articles/:id", to: "articles#destroy"


end
