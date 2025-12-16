Rails.application.routes.draw do
  scope module: "admin" do
    resources :users
  end
  # resources :users, path: "/admin/users"
  resources :magazines do
    resources :ads
  end
end
