Rails.application.routes.draw do
  concern :commentable do
    resources :ads
  end
  resources :movies, concerns: :commentable
  resources :magazines, concerns: :commentable
  # resources :movies do
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
