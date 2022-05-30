Rails.application.routes.draw do
  # Nested resource
  resources :users do
    resources :goals
  end
  resources :nodes
  resources :tasks
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
