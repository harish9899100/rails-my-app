Rails.application.routes.draw do
  # scope module: "admin" do
  #   resources :users
  # end
  # # resources :users, path: "/admin/users"
  resources :magazines, shallow: true do
    resources :ads
  end
  # resources :users
end
