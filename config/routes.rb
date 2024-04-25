Rails.application.routes.draw do
  resources :calls
  resources :users
  get "/users/inactive/:id", to: "users#inactive"
  get "/users/active/:id", to: "users#active"
end
