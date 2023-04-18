Rails.application.routes.draw do
  resources :profile_tags
  resources :tags
  resources :opportunity_tags
  resources :applications
  resources :experiences
  resources :educations
  resources :opportunities
  resources :profiles
  resources :employers
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
