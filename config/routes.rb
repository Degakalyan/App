Rails.application.routes.draw do
  get "signup", to: "users#new"
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  resources :users, except: [:new]
  resources :posts do
  	resources :comments
  end

  resources :comments

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
