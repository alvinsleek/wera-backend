Rails.application.routes.draw do
  
resources :profiles, only: [:show] do
    resources :educations, only: [:create, :update, :destroy]
    resources :experiences, only: [:create, :update, :destroy]
  end
  resources :profiles, only: [:show, :index, :update, :destroy]
  resources :employers, only: [:index, :update, :show, :destroy]
  resources :opportunities, only: [:show, :create, :index]
  resources :tags, only: [:create]
  resources :applications, only: [:index,:create]

  post "/login", to: "sessions#create"
  post "/signup", to: "users#create"  
  get '/all_summaries', to: 'sessions#summaries'

end