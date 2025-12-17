Rails.application.routes.draw do
  # get "*magazines", to: "magazines#show"
  # get "magazines/*other", to: "magazines#unknown"
  # get "magazines/*section/:name", to: "magazines#show"




  # match "magazines", to: "magazines#show", via: [ :get, :post ]
  # get "magazines/:id", to: "magazines#show"
  # get "magazines(/:id)", to: "magazines#show"
  # resources :magazines do
  #   get "preview", on: :collection
  # end
  # resources :magazines do
  #   collection do
  #     get "preview"
  #   end
  # end
  # resources :magazines do
  #   collection do
  #     get "preview"
  #   end
  # end
  # resources :magazines do
  #   get "preview", on: :member
  # end
  # resources :magazines do
  #   member do
  #     get "preview"
  #   end
  # end
  # resources :magazines do
  #   resources :ads
  # end
  # concern :commentable do
  #   resources :ads
  # end
  # resources :movies, concerns: :commentable
  # resources :magazines, concerns: :commentable
  # # resources :movies do
  #   resources :ads
  # end
  # resources :magazines do
  #   resources :ads
  # end
  # scope module: "admin" do
  #   resources :users
  # end
  # # resources :users, path: "/admin/users"
  # shallow do
  #   resources :magazines do
  #     resources :ads
  #   end
  # end
  # resources :users
end
