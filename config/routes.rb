Rails.application.routes.draw do
  get "sessions/create"
  resources :comments

  resources :products
  resources :articales
  resources :books
  get "/books/:id", to: "books#show"
  resources :pages
  get "about" => "pages#about_us"
  get "privacy" => "pages#privacy_policy"
  get "terms" => "pages#terms_and_conditation"
  resources :sessions, only: [ :new, :create ]
   resource :logins, only: [ :new, :create, :destroy ]
  # namespace :admin do
  #   resources :logins
  # end


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "products#index"
end
