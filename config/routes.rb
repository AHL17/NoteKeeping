Rails.application.routes.draw do
  root "notes#index"
  
  get "/notes", to: "notes#index"
end
