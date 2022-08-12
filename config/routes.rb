Rails.application.routes.draw do
  root "sessions#new"
  # Nested resource
  resources :users do
    resources :goals
  end
  resources :nodes
  resources :tasks

  post "sign_up", to: "users#create"
  get "sign_up", to: "users#new"
  get "sign_out", to: "tasks#index"
  get "logout", to: "sessions#destroy"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  get "login", to: "sessions#new"
  put "account", to: "users#update"
  get "account", to: "account#tasks"
  delete "account", to: "users#destroy"
  resources :passwords, only: [:create, :edit, :new, :update], param: :password_reset_token
  resources :confirmations, only: [:create, :edit, :new], param: :confirmation_token

  resources :active_sessions, only: [:destroy] do
      collection do
        delete "destroy_all"
      end
    end

end
