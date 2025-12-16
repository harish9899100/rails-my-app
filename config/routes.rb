Rails.application.routes.draw do
  # get "ads/index"
  # get "ads/show"
  # scope "/admin" do
  #   resources :users
  # end
  # resources :users, path: "/admin/users"
  resources :magazines do
    resources :ads
  end
end
