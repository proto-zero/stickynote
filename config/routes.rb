Rails.application.routes.draw do
  root "sticky#index"

  get "/stickyindex", to: "sticky#index"
  post "/create", to: "sticky#create"
  delete "/stickyindex/:id", to: "sticky#destroy"
end
