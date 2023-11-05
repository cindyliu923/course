Rails.application.routes.draw do
  resources :offline_licenses
  resources :user_lectures
  resources :lectures
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
