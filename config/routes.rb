Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resources :articles

  # Read all
  get "articles", to: "articles#index"
  # Create
  get "articles/new", to: "articles#new"
  post "articles", to: "articles#create"
  # Read one - The `show` route needs to be *after* `new` route.
  get "articles/:id", to: "articles#show", as: :article
  # Update
  get "articles/:id/edit", to: "articles#edit"
  patch "articles/:id", to: "articles#update"
  # Delete
  delete "articles/:id", to: "articles#destroy"
end
